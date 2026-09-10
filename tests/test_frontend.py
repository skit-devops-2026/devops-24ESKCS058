from pathlib import Path

def test_required_files_exist():
    required_files = [
        "index.html",
        "login.html",
        "signup.html",
        "dsa.html",
        "subjects.html",
        "aptitude.html",
        "planner.html",
        "goals.html",
        "placement.html",
        "profile.html",
        "css/style.css",
        "js/script.js",
    ]

    for file_name in required_files:
        assert Path(file_name).is_file(), f"Missing required file: {file_name}"

def test_dashboard_contains_place_track():
    content = Path("index.html").read_text(encoding="utf-8")
    assert "PlaceTrack" in content

def test_dashboard_contains_arpit():
    content = Path("index.html").read_text(encoding="utf-8")
    assert "Arpit" in content

def test_dashboard_has_title():
    content = Path('index.html').read_text(encoding='utf-8')
    assert '<title>PlaceTrack - Dashboard</title>' in content

def test_dashboard_heading():
    content = Path('index.html').read_text(encoding='utf-8')
    assert 'Welcome back, Arpit' in content
