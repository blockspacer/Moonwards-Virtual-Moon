extends PanelContainer
"""
	Chat Scene Script
"""

onready var _chat_display_node: RichTextLabel = $"V/RichTextLabel"
onready var _chat_input_node: LineEdit = $"V/ChatInput"

#Where the chat box is when fully open.
const CHAT_RAISED_MARGIN_TOP = -198
const CHAT_LOWER_MARGIN_TOP = -60

var _active: bool = false
var _chat_is_raised : bool = false


func _unhandled_input(event: InputEvent) -> void:
	if not visible or _active :
		return
	
	if event is InputEventKey:
		if event.pressed == false :
			return
		
		if event.scancode == KEY_ENTER:
			_chat_input_node.grab_focus()
			_chat_input_node.editable = true
			_active = true
		
		elif event.scancode == KEY_V :
			if _chat_is_raised : #Lower the chat.
				lower_chat()
			else :
				raise_chat()
		
		#Now determine if the player is trying to scroll the chat window.
		elif event.scancode == KEY_T :
			#Scroll upwards.
			var _v_scroll_bar : VScrollBar = _chat_display_node.get_v_scroll()
			_v_scroll_bar.value = _v_scroll_bar.value - _v_scroll_bar.page
		
		elif event.scancode == KEY_G :
			#Scroll upwards.
			var _v_scroll_bar : VScrollBar = _chat_display_node.get_v_scroll()
			_v_scroll_bar.value = _v_scroll_bar.value + _v_scroll_bar.page


func _on_LineEdit_text_entered(new_text: String) -> void:
	if new_text != "":
		var username : String = "[color=#DB7900]" + Options.username +  ":[/color]: "
		
		rpc("_append_text_to_chat", username + new_text )
	
	_chat_input_node.clear()
	_chat_input_node.release_focus()
	_chat_input_node.editable = false
	
	set_deferred("_active", false)


remotesync func _append_text_to_chat(new_text: String) -> void:
	_chat_display_node.newline()
	# TODO: Add timestap prefix
	# TODO: Add serverside logging

	#warning-ignore:return_value_discarded
	_chat_display_node.append_bbcode(new_text)


func lower_chat() -> void :
	#Make the chat as small as possible.
	margin_top = CHAT_LOWER_MARGIN_TOP
	_chat_is_raised = false


func raise_chat() -> void :
	#Bring the chat up to the maximum height.
	margin_top = CHAT_RAISED_MARGIN_TOP
	_chat_is_raised = true
