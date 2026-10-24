#!/bin/sh
# A small, dependency-free companion to the GitHub profile.
set -eu

intro() {
    cat <<'EOF'
fabrizio@github:~$ whoami

Fabrizio / FaberNa
Senior Software Engineer · Distributed Systems · Cloud · AI

13+ years of engineering experience.
Curious by nature. Driven by challenges. Always building.

I build backend services, distributed systems, and cloud-native
applications, balancing reliability, maintainability, and business value.
EOF
}

principles() {
    cat <<'EOF'
Understand before building.
Simplicity is a feature.
Own the outcome.
Never stop learning.
EOF
}

lab() {
    cat <<'EOF'
Personal projects and explorations

Agent Orchestration Lab
  Exploring orchestration, reliability, observability, and evaluation.

imho
  Independent publishing about technology, economics, society, and ideas.
  https://imhonews.it

Fast Insurance
  An experimental concept for dynamic pricing and usage-based insurance.
EOF
}

now() {
    cat <<'EOF'
Building more reliable AI agent workflows.

Exploring agent coordination, observability, evaluation strategies,
and the architectural trade-offs that affect reliability.
EOF
}

usage() {
    cat <<'EOF'
Usage: ./about.sh [section]

Sections:
  about        Meet Fabrizio (default)
  principles   How I approach engineering
  lab          Personal projects and explorations
  now          My current engineering challenge
  all          Read every section
  -h, --help   Show this help

GitHub: https://github.com/FaberNa
EOF
}

if [ "$#" -gt 1 ]; then
    usage >&2
    exit 1
fi

case "${1:-about}" in
    about) intro ;;
    principles) principles ;;
    lab) lab ;;
    now) now ;;
    all)
        intro
        printf '\n--- principles ---\n\n'
        principles
        printf '\n--- lab ---\n\n'
        lab
        printf '\n--- now ---\n\n'
        now
        ;;
    -h|--help) usage ;;
    *)
        printf 'Unknown section: %s\n\n' "$1" >&2
        usage >&2
        exit 1
        ;;
esac
