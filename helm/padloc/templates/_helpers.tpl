# padloc-chart/templates/_helpers.tpl
{{/*
Expand the name of the chart.
*/}}
{{- define "padloc.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "padloc.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a PersistentVolume name for the data volume.
*/}}
{{- define "padloc.dataVolumeName" -}}
{{- printf "%s-%s" .Release.Name "data" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a PersistentVolume name for the attachments volume.
*/}}
{{- define "padloc.attachmentsVolumeName" -}}
{{- printf "%s-%s" .Release.Name "attachments" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a PersistentVolumeClaim name for the data volume.
*/}}
{{- define "padloc.dataVolumeClaimName" -}}
{{- printf "%s-%s" .Release.Name "data-pvc" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a PersistentVolumeClaim name for the attachments volume.
*/}}
{{- define "padloc.attachmentsVolumeClaimName" -}}
{{- printf "%s-%s" .Release.Name "attachments-pvc" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
