function hideAllTabContents () {
  document.querySelectorAll('.tab-content').forEach((tabContent) => {
    tabContent.classList.add('d-none')
  })
};

function deactiveTabs () {
  document.querySelectorAll('.tab').forEach((tab) => {
    tab.classList.remove('active')
  })
};

function initiateDashboardTab () {
  if (document.querySelector(".dashboard")) {
    document.querySelectorAll('.tab').forEach((tab) => {
      tab.addEventListener('click', function(event){
        deactiveTabs();
        hideAllTabContents()
        let selector = `#${event.currentTarget.id}-content`
        document.querySelector(selector).classList.remove('d-none')
        event.currentTarget.classList.add('active')
      })
    })
  }
}

export { initiateDashboardTab }
