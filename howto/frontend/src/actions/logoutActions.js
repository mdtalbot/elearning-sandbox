export function logoutAction() {
  localStorage.clear();
  return {
    type: UNAUTHENTICATED
  };
}
