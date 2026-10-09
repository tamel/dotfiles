function review
  if not git rev-parse --is-inside-work-tree >/dev/null 2>&1
    echo "review: not inside a git repository" >&2
    return 1
  end

  hunk diff HEAD^1
end
