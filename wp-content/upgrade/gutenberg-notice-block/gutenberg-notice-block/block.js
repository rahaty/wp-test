/* block.js */
var el = wp.element.createElement;

wp.blocks.registerBlockType('rahat-gutenberg/notice-block', {

   title: 'Embed file', // Block name visible to user

   icon: 'smiley', // Toolbar icon can be either using WP Dashicons or custom SVG

   category: 'common', // Under which category the block would appear

   attributes: { // The data this block will be storing
      file:{ type: 'file' },
      button: {
         type: 'string',
         default: 'Join Today'
      }
   },
/* block.js  */
edit: function(props) {

   // How our block renders in the editor in edit mode
   function uploadfile( event ) {
      props.setAttributes( { file: event.target.value } );
   }
   function uploadbutton( event ) {
      props.setAttributes( { button: event.target.value } );
   }
  

   return el( 'div',
      {
         className: 'notice-box notice-' + props.attributes.type
      },
    
      el(
         'input',
         {
            type: 'file',
            placeholder: 'Choose  your file...',
            value: props.attributes.file,
            onChange: uploadfile,
            style: { width: '100%' }
         }
      ),
     
      el(
         editor.RichText,
         {
            tagName: 'span',
            className: 'mcb-call-to-action-button',
            value: props.attributes.button,
            onChange: function( content ) {
               props.setAttributes( { button: content } );
            }
         }
      )
   ); // End return

},  // End edit()

save: function(props) {
   // How our block renders on the frontend

   return el( 'div',
      {
         className: 'notice-box notice-' + props.attributes.type
      },
      el(
         
         'h4',
         null,
         props.attributes.title
      ),
      el( wp.editor.RichText.Content, {
         tagName: 'p',
         value: props.attributes.content
      })

   ); // End return

} // End save()

});
