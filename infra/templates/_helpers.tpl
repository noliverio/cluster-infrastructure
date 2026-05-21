{{- define "default-sync-policy" -}}
syncPolicy:
  automated:
    enabled: true
    selfHeal: true
    prune: true
{{- end -}}
{{- define "common-app-metadata" -}}
namespace: {{ .Values.spec.argoNameSpace }}
finalizers:
- resources-finalizer.argocd.argoproj.io
{{- end -}}