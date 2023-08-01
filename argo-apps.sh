export GITOPS_REPO_URL_ARGOCD=https://github.com/enrique-esquivel/eks-argocd-sample


argocd app create apps --repo $GITOPS_REPO_URL_ARGOCD \
  --dest-server https://kubernetes.default.svc \
  --sync-policy automated --self-heal --auto-prune \
  --set-finalizer \
  --upsert \
  --path app-of-apps
