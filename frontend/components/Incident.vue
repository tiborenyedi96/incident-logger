<template>
  <div class="incident">
    <div class="incident-header">
      <p class="title">Database outage</p>
      <div class="badges">
        <span class="badge error">Critical</span>
        <span class="badge info">Open</span>
      </div>
    </div>

    <p class="description">
      Connection to main DB cluster is failing for all services.
    </p>

    <div class="incident-footer">
      <span class="meta">Created at: 2025-09-30 10:32</span>
    </div>
  </div>
</template>

<style scoped>
.incident {
  background: #fff;
  border-radius: 14px;
  padding: 2rem;
  margin: 1.5rem auto;
  box-shadow: 0 2px 4px rgba(0,0,0,0.06),
              0 4px 6px rgba(0,0,0,0.1);
  max-width: 900px;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.incident-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.title {
  font-size: 1.8rem;
  font-weight: 700;
  margin: 0;
}

.description {
  font-size: 1.25rem;
  margin: 0;
  color: #374151;
  line-height: 1.6;
}

.incident-footer {
  margin-top: 0.75rem;
}

.meta {
  font-size: 1rem;
  color: #6B7280;
}

.badges {
  display: flex;
  gap: 0.75rem;
}

.badge {
  display: inline-block;
  padding: 0.4rem 0.8rem;
  border-radius: 999px;
  font-size: 1rem;
  font-weight: 600;
}

.badge.success { background: #DCFCE7; color: #166534; }
.badge.warning { background: #FEF3C7; color: #92400E; }
.badge.error   { background: #FEE2E2; color: #B91C1C; }
.badge.info    { background: #DBEAFE; color: #1E40AF; }
</style>
