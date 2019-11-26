function hideAllTabContents () {
  document.querySelectorAll('.tab-content').forEach((tabContent) => {
    tabContent.classList.add('d-none')
    // tabContent.classList.remove('active')
  })
}

function initiateDashboardTab () {
  if (document.querySelector(".dashboard")) {
    document.querySelectorAll('.tab').forEach((tab) => {
      tab.addEventListener('click', function(event){
        hideAllTabContents()
        let selector = `#${event.currentTarget.id}-content`
        document.querySelector(selector).classList.remove('d-none')
        // document.querySelector(selector).classList.add('active')
      })
    })
  }
}

export { initiateDashboardTab }
