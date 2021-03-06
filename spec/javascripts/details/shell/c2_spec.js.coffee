#= require details/details_helper

describe 'C2', ->

  describe '#setup', ->
    c2 = new C2()

    it "checks for c2", ->
      expect(c2 instanceof C2).to.eql(true)

    it "checks for each constructor", ->
      expect(c2.actionBridge instanceof ActionBarBridge).to.eql(true)
      expect(c2.listViewBridge instanceof ListViewBridge).to.eql(true)

  describe '#setup data', ->
    c2 = new C2()

    it "check constructor detailsSave", ->
      expect(c2.detailsSave instanceof DetailsSave).to.eql(true)

    it "check config passing test param detailsSave", ->
      test = "#mode-parent"
      expect(c2.config.formContainer).to.eql(test)

    it "check constructor updateView", ->
      expect(c2.updateView instanceof UpdateView).to.eql(true)

    it "check config passing test param updateView", ->
      test = "#mode-parent"
      expect(c2.config.formContainer).to.eql(test)


  describe '#setup state', ->
    c2 = new C2()

    it "check constructor editMode", ->
      expect(c2.editMode instanceof EditStateController).to.eql(true)

    it "check constructor formState", ->
      expect(c2.formState instanceof FormChangeState).to.eql(true)

  describe '#setup views', ->
    c2 = new C2()

    it "check constructor attachmentCardController", ->
      expect(c2.attachmentCardController instanceof AttachmentCardController).to.eql(true)

    it "check constructor observerCardController", ->
      expect(c2.observerCardController instanceof ObserverCardController).to.eql(true)

    it "check constructor activityCardController", ->
      expect(c2.activityCardController instanceof ActivityCardController).to.eql(true)

    it "check constructor approvalCardController", ->
      expect(c2.approvalCardController instanceof ApprovalCardController).to.eql(true)

    it "check constructor detailsRequestCard", ->
      expect(c2.detailsRequestCard instanceof DetailsRequestCard).to.eql(true)

    it "check config passing test param attachmentCard", ->
      test = "attachment-card-test"
      testParam = {
        attachmentCard: test
      }
      c2 = new C2(testParam)
      expect(c2.config.attachmentCard).to.eql(test)

    it "check config passing test param activityCard", ->
      test = "activity-card-test"
      testParam = {
        activityCard: test
      }
      c2 = new C2(testParam)
      expect(c2.config.activityCard).to.eql(test)


    it "check constructor modals", ->
      expect(c2.modals instanceof ModalController).to.eql(true)

    it "check config passing test param modalCard", ->
      test = "cancel-card-test"
      testParam = {
        modalCard: test
      }
      c2 = new C2(testParam)
      expect(c2.config.modalCard).to.eql(test)

    it "check constructor actionBar", ->
      expect(c2.actionBar instanceof ActionBar).to.eql(true)

    it "check config passing test param actionBar", ->
      test = "action-bar-test"
      testParam = {
        actionBar: test
      }
      c2 = new C2(testParam)
      expect(c2.config.actionBar).to.eql(test)

    it "check constructor notification", ->
      expect(c2.notification instanceof Notifications).to.eql(true)

    it "check config passing test param listView", ->
      test = "listView-bar-test"
      testParam = {
        listView: test
      }
      c2 = new C2(testParam)
      expect(c2.config.listView).to.eql(test)

    it "check config passing test param sidebarNav", ->
      test = "sidebarNav-bar-test"
      testParam = {
        sidebarNav: test
      }
      c2 = new C2(testParam)
      expect(c2.config.sidebarNav).to.eql(test)

  describe '#events _actionBarState', ->
    it "editMode is on when state when edit-mode:on", ->

  describe '#events _actionBarSave', ->
    it "action-bar-clicked:save is fired through details-form:save", ->
      flag = false
      testParams = setupC2TestParams()
      c2 = new C2(testParams)
      c2.detailsSave.el.on 'details-form:save', ->
        flag = true
      c2.detailsSave.el.trigger('details-form:save')
      expect(flag).to.eql(true)

  describe '#events _setupNotifications', ->
    it "create the event hook that notification triggers", ->

  describe '#handleSaveError', ->
    it "checks for one errors", ->
    it "checks for multiple errors", ->

  describe '#events notification', ->
    it "checks for one success response", ->

  describe 'trigger events on dirrty', ->
    it "make sure dirrty is triggered on form", ->
    it "make sure dirrty is reinit on save", ->

  describe 'when request detail is interacted', ->
    it "clicking modify will load the view in edit mode", ->
    it "clicking modify should not load any notifications", ->
    it "clicking cancel button from modify will revert to view mode", ->
    it "clicking cancel in action bar will revert to view mode", ->
    it "clicking save in action bar will load modal for save confirm", ->
    it "clicking cancel button in save confirm will close modal", ->
    it "clicking -x- button in save confirm will close modal", ->
    it "make sure dirrty is reinit on save", ->
