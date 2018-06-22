given("I am a user with internet access", () => {
  return true;
});
when("I navigate to {string}", (url) => {
  cy.visit(url);
});
then("I should see {string} in the url.", (urlPath) => {
  cy.url().should('include', urlPath);
});

given("I am a {string}", (user) => {
  return (user === 'Advisor' || user == 'Assistant');
});
when("I log in using {string} and {string}", (username,password) => {
  cy.get('[name=email]').type(Cypress.env(username));
  cy.get('[name=password]').type(Cypress.env(password));
  cy.get('[method=post]').submit();
});
