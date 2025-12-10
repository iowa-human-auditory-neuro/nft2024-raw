# Selective Attention EEG Dataset

## Overview

This dataset contains EEG and behavioral data collected from a selective attention task. The data structure follows the Brain Imaging Data Structure (BIDS) format. This experiment was part of a larger data collection effort (including QuickSIN and Neurofeedback Rocket game) conducted in an electrically shielded, sound-treated booth in Iowa City, Iowa, USA.

## Experimental Design

### Task (`task-selatt`)

Participants were instructed to focus on either a male or female voice while ignoring a competing speaker.

- **Sessions:** Each participant completed 3 sessions.
- **Runs per session:** Participants listened to two podcasts (one attending to the female voice, one attending to the male voice).
- **Assessment:** 10 comprehensive questions were asked per podcast.
  - Format: 4 multiple-choice answers.
  - Input: Number keys (1, 2, 3, 4).
  - Feedback: None provided to the participant.

### Stimuli

Audio stimuli consisted of mixed male (AM) and female (KM) voices presented via loudspeakers at 0 degrees azimuth.

- **Pairing:** Stimuli were paired by number (e.g., KM1 mixed with AM1).
- **Audio Specs:**
  - SPL: [00] dB
  - RMS Matching: [0000]
- **Source:** YouTube (Original links available in documentation).
- **Location:** WAV files are stored in `audio-stimuli/task-selatt` prefixed with the stimulus code.

## Subjects

- **Screening:** All subjects had normal hearing (within 20 dB HL pure-tone threshold from 125 Hz to 8 kHz in octave frequencies).

## Data Acquisition

### EEG

- **System:** BioSemi Active2.
- **Electrodes:** 64 active electrodes.
- **Technical Note:** Refer to `note_task-selatt.txt` for specific acquisition specs, including:
  - Channel indices
  - Sampling frequency
  - Trigger event codes
  - Montage
  - Caveats on outliers

## Data Organization

Data is organized hierarchically: `Subject > Session > Data Type`.

### Naming Convention

Filename format: `sub-[id]_ses-[num]_task-[name]_[datatype].[extension]`

**Example:** `sub-nft004-ses-03_task-selatt_eeg.bdf`

- **sub-nft004:** Subject ID NFT004
- **ses-03:** Session 3
- **task-selatt:** Selective Attention task
- **eeg:** EEG recording

### Directory Structure

- **EEG Data:** Located in subject/session folders (e.g., `sub-01/ses-01/eeg/`).
- **Behavioral Data:** Coded as `beh`.
- **Stimuli:** `audio-stimuli/task-selatt`.
- **Metadata:**
  - `raw/comprehension_questions`: CSV files containing questions, choices, and answers.
  - `raw/task-selatt_counterbalancing.csv`: Counterbalancing table.