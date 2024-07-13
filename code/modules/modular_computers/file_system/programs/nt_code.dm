/// A laptop app for programming integrated circuits, running the programs and export them to other circuits via USB
/datum/computer_file/program/nt_code
	filename = "nt_code"
	filedesc = "NT Code"
	downloader_category = PROGRAM_CATEGORY_SCIENCE
	can_run_on_flags = PROGRAM_LAPTOP
	program_open_overlay = "generic"
	extended_desc = "An IDE for programming integrated circuit firmware."
	size = 4
	tgui_id = "NtosCode"
	program_icon = "code"
	/// Internal integrated circuit to run the programs on the laptop
	var/obj/item/integrated_circuit/circuit

/datum/computer_file/program/nt_code/on_install(datum/computer_file/source, obj/item/modular_computer/computer_installing)
	. = ..()
	circuit = computer.shell.attached_circuit

/datum/computer_file/program/nt_code/ui_assets(mob/user)
	return circuit.ui_assets(user)

/datum/computer_file/program/nt_code/ui_static_data(mob/user)
	return circuit.ui_static_data(user)

/datum/computer_file/program/nt_code/ui_data(mob/user)
	return circuit.ui_data(user)

/datum/computer_file/program/nt_code/ui_host(mob/user)
	return circuit.ui_host(user)

/datum/computer_file/program/nt_code/ui_status(mob/user, datum/ui_state/state)
	return circuit.ui_status(user, state)

/datum/computer_file/program/nt_code/ui_state(mob/user)
	return circuit.ui_state(user)

/datum/computer_file/program/nt_code/ui_interact(mob/user, datum/tgui/ui)
	return circuit.ui_interact(user, ui)

/datum/computer_file/program/nt_code/ui_act(action, list/params, datum/tgui/ui)
	. = ..()
	return circuit.ui_act(action, params, ui)
