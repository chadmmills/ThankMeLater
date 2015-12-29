@Contact = React.createClass

  render: ->
    <div className="contact-card" key={@props.contact.id}>
      <div className="contact-card__header">{ @props.contact.name }</div>
      <div className="contact-card__body">
        <div className="contact-card__attribute">
          <div className="contact-card__label">Address</div>
          <div className="contact-card__value">{@props.contact.full_address}</div>
        </div>
        <div className="contact-card__attribute">
          <div className="contact-card__label">City</div>
          <div className="contact-card__value">{@props.contact.city}</div>
        </div>
        <div className="contact-card__attribute">
          <div className="contact-card__label">State</div>
          <div className="contact-card__value">{@props.contact.state}</div>
        </div>
        <div className="contact-card__attribute">
          <div className="contact-card__label">Zip</div>
          <div className="contact-card__value">{@props.contact.zipcode}</div>
        </div>
      </div>
    </div>
