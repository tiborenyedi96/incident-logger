const BASE_URL = 'http://localhost:8000'; // FastAPI default

export async function getIncidents() {
  const res = await fetch(`${BASE_URL}/incidents`);
  if (!res.ok) throw new Error(`GET /incidents failed: ${res.status}`);
  return res.json();
}

export async function createIncident(payload) {
  const res = await fetch(`${BASE_URL}/incidents`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(payload),
  });
  if (!res.ok) throw new Error(`POST /incidents failed: ${res.status}`);
  return res.json();
}
