/*
CheeseCutter v2 (C) Abaddon. Licensed under GNU GPL.
*/

module com.session;
import ct.base;
import com.fb;
import ui.ui;
import seq.sequencer;

struct EditorState {
	int octave = 3;
	int activeInstrument;
	bool autoinsertInstrument = true;
	bool shortTitles = true;
	bool displayHelp = true;
	bool keyjamStatus = false;
	string filename;
}

__gshared Song song;
UI mainui;
Video video;
Screen screen;
PosDataTable fplayPos, seqPos;
EditorState state;

void initSession() {
	song = new Song();
	seqPos = new PosDataTable();
	fplayPos = new PosDataTable();
	for(int i = 0; i < 3; i++) {
		seqPos[i].tracks = song.tracks[i];
		fplayPos[i].tracks = song.tracks[i];
	}
}
