/* global given */
// you can have external state, and also require things!
const url = 'https://google.com'

given('I open Google page', () => {
  cy.visit(url)
})

/* global then */
then(`I see {string} in the title`, (title) => {
  cy.title().should('include', title)
})
