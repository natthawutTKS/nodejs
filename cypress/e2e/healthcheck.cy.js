describe('Health Check API Test', () => {
  it('Should return a 200 status code', () => {
    cy.request({
      method: 'GET',
      url: 'http://localhost:3000', // Replace with the actual health check URL
      failOnStatusCode: false, // Do not fail the test on non-200 status codes
    }).then((response) => {
      expect(response.status).to.eq(200);
    });
  })
})