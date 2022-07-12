/* block.js */
var el = wp.element.createElement;

wp.blocks.registerBlockType('rahat-gutenberg/notice-block', {
   
   title: __( 'PDF Embedder' ), // Block title. __() function allows for internationalization.
   icon: 'media-document', // Block icon from Dashicons. https://developer.wordpress.org/resource/dashicons/.
category: 'common', // Block category. Group blocks together based on common traits E.g. common, formatting, layout widgets, embed.
   attributes: {
   pdfID: {
           type: 'number'
       },
       url: {
           type: 'string'
       },
       width: {
           type: 'string'
       },
       height: {
           type: 'string'
       },
   toolbar: {
           type: 'string',
           default: 'bottom'
       },
       toolbarfixed: {
           type: 'string',
           default: 'off'
       }
   },

   // Defines the block within the editor.
   edit: function( props ) {
   
   var {attributes , setAttributes, focus, className} = props;
       
   var InspectorControls = wp.editor.InspectorControls;
   var Button = wp.components.Button;
   var RichText = wp.editor.RichText;
   var Editable = wp.blocks.Editable; // Editable component of React.
   var MediaUpload = wp.editor.MediaUpload;
   var btn = wp.components.Button;
   var TextControl = wp.components.TextControl;
   var SelectControl = wp.components.SelectControl;
   var RadioControl = wp.components.RadioControl;
   
   var onSelectPDF = function(media) {
           return props.setAttributes({
               url: media.url,
               pdfID: media.id
           });
       }

       function onChangeWidth(v) {
           setAttributes( {width: v} );
       }

       function onChangeHeight(v) {
           setAttributes( {height: v} );
       }
   
   function onChangeToolbar(v) {
           setAttributes( {toolbar: v} );
       }

       function onChangeToolbarfixed(v) {
           setAttributes( {toolbarfixed: v} );
       }
   
   return [
      createElement(
               MediaUpload,
               {
                   onSelect: onSelectPDF,
                   type: 'application/pdf',
                   value: attributes.pdfID,
                   render: function(open) {
                       return createElement(btn,{onClick: open.open },
                           attributes.url ? 'PDF: ' + attributes.url : 'Click here to Open Media Library to select PDF')
                   }
               }
      ),
                     
      createElement( InspectorControls, { key: 'inspector' }, // Display the block options in the inspector pancreateElement.
         createElement('div',{ className: 'pdf_div_main'}	,
            createElement(
               'hr',
               {},
            ),
            createElement(
               'p',
               {},
               __('Change the Height & Width of the PDF'),
            ),
            createElement(
               'hr',
               {},
            ),
            createElement(
               'p',
               {},
               __('Enter max or an integer number of pixels.')
            ),							
            createElement(
               TextControl,
               {
                  label: __('Width'),
                  value: attributes.width,
                  onChange: onChangeWidth
               }
            ),
            createElement(
               TextControl,
               {
                  label: __('Height'),
                  value: attributes.height,
                  onChange: onChangeHeight
               }
            ),
            createElement(
               SelectControl,
                  {
                     label: __('Toolbar Location'),
                     value: attributes.toolbar,
                     options: [
                        { label: 'Top', value: 'top' },
                        { label: 'Bottom', value: 'bottom' },
                        { label: 'Both', value: 'both' },
                        { label: 'None', value: 'none' }
                     ],
                     onChange: onChangeToolbar
                  }
            ),
            createElement(
               RadioControl,
               {
                  label: __('Toolbar Hover'),
                  selected: attributes.toolbarfixed,
                  options: [
                     { label: __('Toolbar appears only on hover over document'), value: 'off' },
                     { label: __('Toolbar always visible '), value: 'on' }
                  ],
                  onChange: onChangeToolbarfixed
               }
            ),
         ),
      ),
       ];
   },

   // Defines the saved block.
   save: function( props ) {
   return createElement(
           'p',
           {
               className: props.className,
         key: 'return-key',
           },props.attributes.content);
},

});
  /* title: 'Embed file', // Block name visible to user

   icon: 'file', // Toolbar icon can be either using WP Dashicons or custom SVG

   category: 'common', // Under which category the block would appear

   attributes: { // The data this block will be storing
      file:{ type: 'file' },
      button: {
         type: 'string',
         default: 'Join Today'
      }
   },

   
   //custom function to upload data
   //add_action('admin_menu', 'test_plugin_setup_menu');
 
  /* function test_plugin_setup_menu(){
       add_menu_page( 'Test Plugin Page', 'Test Plugin', 'manage_options', 'test-plugin', 'test_init' );
   }
    
    function test_init(){
       test_handle_post();
   ?>	  
       <h2>Upload a File</h2>
       <!-- Form to handle the upload - The enctype value here is very important -->
       <form  method="post" enctype="multipart/form-data">
           <input type='file' id='test_upload_pdf' name='test_upload_pdf'></input>
           <?php submit_button('Upload') ?>
       </form>
   <?php
   }
    
   function test_handle_post(){
      
       // First check if the file appears on the _FILES array
       if(isset($_FILES['test_upload_pdf'])){
           $pdf = $_FILES['test_upload_pdf'];
    
           // Use the wordpress function to upload
           // test_upload_pdf corresponds to the position in the $_FILES array
           // 0 means the content is not associated with any other posts
           $uploaded=media_handle_upload('test_upload_pdf', 0);
           // Error checking using WP functions
         if(is_wp_error($uploaded)){
               echo "Error uploading file: " . $uploaded->get_error_message();
           } 
           else { 
   
   ?>
                <iframe src="https://cdn.a1office.co/wp-content/uploads/2022/07/Employee-Joining-Form-_3_-5.pdf"  width="900px" height="500px" ></iframe> 
               <?php
       }
      } 
      } 
   
     
/* block.js  
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
*/

