given("I am a user with internet access", () => {
  return true;
});
when("I navigate to {string}", (url) => {
  cy.visit(url);
});
then("I should see {string} in the url.", (urlPath) => {
  cy.url().should('include', urlPath);
});
