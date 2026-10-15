-- HT-6: HealthTracker database schema
CREATE TABLE users (
  id            BIGSERIAL PRIMARY KEY,
  email         VARCHAR(255) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at    TIMESTAMPTZ  NOT NULL DEFAULT now()
);

CREATE TABLE health_entries (
  id          BIGSERIAL PRIMARY KEY,
  user_id     BIGINT      NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  metric      VARCHAR(32) NOT NULL CHECK (metric IN ('steps','weight','heart_rate','sleep')),
  value       NUMERIC(10,2) NOT NULL,
  recorded_at TIMESTAMPTZ NOT NULL,
  synced_at   TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_entries_user_time ON health_entries (user_id, recorded_at DESC);
