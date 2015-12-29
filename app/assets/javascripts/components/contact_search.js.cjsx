@ContactSearch = React.createClass

  displayName: "ContactSearch"

  renderClearButton: ->
    if @props.filteredText
      <span onClick={@props.clearSearch} className="contact-search__clear">&times;</span>

  render: ->
    <div className="contact-search">
      <input onChange={@props.searchForText} value={@props.filteredText} className="contact-search__input" placeholder="Search ..."/>
      { @renderClearButton() }
    </div>
