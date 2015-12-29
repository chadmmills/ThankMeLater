@ContactList = React.createClass

  getInitialState: ->
    filteredContacts: @props.contacts
    filteredText: null

  searchForText: (e) ->
    @setState
      filteredContacts: @props.contacts.filter (contact) -> contact.name.toLowerCase().indexOf(e.target.value.toLowerCase()) isnt -1
      filteredText: e.target.value

  clearSearch: ->
    @setState
      filteredContacts: @props.contacts
      filteredText: null

  render: ->
    <div className="contacts-wrapper">
      <ContactSearch clearSearch={@clearSearch} filteredText={ @state.filteredText } searchForText={ @searchForText }/>
      <div className="contact-cards">
        { @state.filteredContacts.map (contact) -> <Contact key={"card_#{contact.id}"} contact={contact} /> }
      </div>
    </div>
