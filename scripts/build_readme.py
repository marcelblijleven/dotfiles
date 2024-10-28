#!/usr/bin/env python

from collections.abc import Generator, Iterable
from datetime import datetime
from pathlib import Path
from typing import Any
from zoneinfo import ZoneInfo

PROJECT_ROOT = Path(__file__).parent.parent
BASE_README = PROJECT_ROOT / "README.md"
DELIMITER = "<!--- end of static README.md --->"


def _read_file(filename: Path) -> str:
    """Read file"""
    with open(filename, "r") as file:
        return file.read()


def _read_lines(filename: Path) -> list[str]:
    """Read lines from file"""
    with open(filename, "r") as file:
        return file.readlines()


def _write_lines(filename: Path, lines: Iterable[str]) -> None:
    """Write lines to file"""
    with open(filename, "w") as file:
        file.writelines(lines)


def _get_static_base_readme() -> list[str]:
    """Get static part of the Base README"""
    base_readme, _ = _read_file(BASE_README).split(DELIMITER)
    lines = base_readme.splitlines(keepends=True)
    lines.append("<!--- end of static README.md --->\n")

    return lines


def _reindent_readme(readme: Path) -> list[str]:
    """Reindent README based on depth of Path"""
    lines: list[str] = []
    path_from_root = str(readme).removeprefix(str(PROJECT_ROOT))
    depth = path_from_root.count("/")

    for line in _read_lines(readme):
        if line.startswith("#"):
            heading = "#" * (depth - 1)
            lines.append(f"{heading}{line}")
        else:
            lines.append(line)

    return lines


def _find_nested_readmes() -> Generator[list[str], Any, Any]:
    """Find all nested README files, reindent them and return the content"""
    for readme in PROJECT_ROOT.rglob("README.md"):
        if readme == BASE_README:
            continue

        lines: list[str] = ["\n"]

        lines = lines + _reindent_readme(readme)

        yield lines


def run() -> None:
    """Run the script"""
    now = datetime.now(tz=ZoneInfo("Europe/Amsterdam"))
    base_readme = _get_static_base_readme()

    for readme in _find_nested_readmes():
        base_readme = base_readme + readme

    base_readme.append(
        f"\nPart of this README was auto-generated at {now:%Y-%m-%d %H:%M}\n"
    )

    _write_lines(BASE_README, base_readme)


if __name__ == "__main__":
    run()
