# Save this as git-auto-update.ps1
# This script will run forever, committing and pushing every 10 minutes

while ($true) {
    Write-Host "--------------------------------------------" -ForegroundColor Yellow
    Write-Host "Starting git cycle at $(Get-Date)" -ForegroundColor Cyan
    
    # Stage all changes
    git add .

    # Commit changes with a message
    git commit -m "Automated commit at $(Get-Date)"

    # Push to the current branch's remote
    git push

    Write-Host "Cycle completed. Waiting 10 minutes..." -ForegroundColor Green
    Start-Sleep -Seconds 600  # 600 seconds = 10 minutes
}
