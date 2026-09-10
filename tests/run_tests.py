from pathlib import Path
import importlib.util

test_file = Path("tests/test_frontend.py")

spec = importlib.util.spec_from_file_location("test_frontend", test_file)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)

test.test_required_files_exist()
test.test_dashboard_contains_place_track()
test.test_dashboard_contains_arpit()

print("All frontend tests passed.")
