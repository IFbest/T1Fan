<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<meta charSet="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/t1icon.png">
<title>경기소식</title>
<style>
.x {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
	-webkit-tap-highlight-color: black;
	margin: 0;
	box-sizing: border-box
}

.x *, .x :after, .x :before {
	box-sizing: inherit
}

.x-el a[href^="mailto:"]:not(.x-el), .x-el a[href^="tel:"]:not(.x-el) {
	color: inherit;
	font-size: inherit;
	text-decoration: inherit
}

.x-el-article, .x-el-aside, .x-el-details, .x-el-figcaption,
	.x-el-figure, .x-el-footer, .x-el-header, .x-el-hgroup, .x-el-main,
	.x-el-menu, .x-el-nav, .x-el-section, .x-el-summary {
	display: block
}

.x-el-audio, .x-el-canvas, .x-el-progress, .x-el-video {
	display: inline-block;
	vertical-align: baseline
}

.x-el-audio:not([controls]) {
	display: none;
	height: 0
}

.x-el-template {
	display: none
}

.x-el-a {
	background-color: black;
	color: inherit
}

.x-el-a:active, .x-el-a:hover {
	outline: 0
}

.x-el-abbr[title] {
	border-bottom: 1px dotted
}

.x-el-b, .x-el-strong {
	font-weight: 700
}

.x-el-dfn {
	font-style: italic
}

.x-el-mark {
	background: black;
	color: #000
}

.x-el-small {
	font-size: 80%
}

.x-el-sub, .x-el-sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline
}

.x-el-sup {
	top: -.5em
}

.x-el-sub {
	bottom: -.25em
}

.x-el-img {
	vertical-align: middle;
	border: 0
}

.x-el-svg:not(:root) {
	overflow: hidden
}

.x-el-figure {
	margin: 0
}

.x-el-hr {
	box-sizing: content-box;
	height: 0
}

.x-el-pre {
	overflow: auto
}

.x-el-code, .x-el-kbd, .x-el-pre, .x-el-samp {
	font-family: monospace, monospace;
	font-size: 1em
}

.x-el-button, .x-el-input, .x-el-optgroup, .x-el-select, .x-el-textarea
	{
	color: inherit;
	font: inherit;
	margin: 0
}

.x-el-button {
	overflow: visible
}

.x-el-button, .x-el-select {
	text-transform: none
}

.x-el-button, .x-el-input[type=button], .x-el-input[type=reset],
	.x-el-input[type=submit] {
	-webkit-appearance: button;
	cursor: pointer
}

.x-el-button[disabled], .x-el-input[disabled] {
	cursor: default
}

.x-el-button::-moz-focus-inner, .x-el-input::-moz-focus-inner {
	border: 0;
	padding: 0
}

.x-el-input {
	line-height: normal
}

.x-el-input[type=checkbox], .x-el-input[type=radio] {
	box-sizing: border-box;
	padding: 0
}

.x-el-input[type=number]::-webkit-inner-spin-button, .x-el-input[type=number]::-webkit-outer-spin-button
	{
	height: auto
}

.x-el-input[type=search] {
	-webkit-appearance: textfield;
	box-sizing: content-box
}

.x-el-input[type=search]::-webkit-search-cancel-button, .x-el-input[type=search]::-webkit-search-decoration
	{
	-webkit-appearance: none
}

.x-el-textarea {
	border: 0
}

.x-el-fieldset {
	border: 1px solid silver;
	margin: 0 2px;
	padding: .35em .625em .75em
}

.x-el-legend {
	border: 0;
	padding: 0
}

.x-el-textarea {
	overflow: auto
}

.x-el-optgroup {
	font-weight: 700
}

.x-el-table {
	border-collapse: collapse;
	border-spacing: 0
}

.x-el-td, .x-el-th {
	padding: 0
}

.x {
	-webkit-font-smoothing: antialiased
}

.x-el-hr {
	border: 0
}

.x-el-fieldset, .x-el-input, .x-el-select, .x-el-textarea {
	margin-top: 0;
	margin-bottom: 0
}

.x-el-fieldset, .x-el-input[type=email], .x-el-input[type=text],
	.x-el-textarea {
	width: 100%
}

.x-el-label {
	vertical-align: middle
}

.x-el-input {
	border-style: none;
	padding: .5em;
	vertical-align: middle
}

.x-el-select:not([multiple]) {
	vertical-align: middle
}

.x-el-textarea {
	line-height: 1.75;
	padding: .5em
}

.x-el.d-none {
	display: none !important
}

.sideline-footer {
	margin-top: auto
}

.disable-scroll {
	touch-action: none;
	overflow: hidden;
	position: fixed;
	max-width: 100vw
}

@
-webkit-keyframes loaderscale { 0%{
	transform: scale(1);
	opacity: 1
}

45






%
{
transform






:






scale




(






.1






)




;
opacity






:






.7






}
80






%
{
transform






:






scale




(






1






)




;
opacity






:






1






}
}
@
keyframes loaderscale { 0%{
	transform: scale(1);
	opacity: 1
}

45






%
{
transform






:






scale




(






.1






)




;
opacity






:






.7






}
80






%
{
transform






:






scale




(






1






)




;
opacity






:






1






}
}
.x-loader svg {
	display: inline-block
}

.x-loader svg:first-child {
	-webkit-animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08)
		-.24s infinite;
	animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08) -.24s
		infinite
}

.x-loader svg:nth-child(2) {
	-webkit-animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08)
		-.12s infinite;
	animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08) -.12s
		infinite
}

.x-loader svg:nth-child(3) {
	-webkit-animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08) 0s
		infinite;
	animation: loaderscale .75s cubic-bezier(.2, .68, .18, 1.08) 0s infinite
}

.x-icon>svg {
	transition: transform .33s ease-in-out
}

.x-icon>svg.rotate-90 {
	transform: rotate(-90deg)
}

.x-icon>svg.rotate90 {
	transform: rotate(90deg)
}

.x-icon>svg.rotate-180 {
	transform: rotate(-180deg)
}

.x-icon>svg.rotate180 {
	transform: rotate(180deg)
}

.x-rt:after {
	content: "";
	clear: both
}

.x-rt ol, .x-rt ul {
	text-align: left
}

.x-rt p {
	margin: 0
}

.x-rt br {
	clear: both
}

.mte-inline-block {
	display: inline-block
}

@media only screen and (min-device-width:1025px) {
	:root select, _::-webkit-full-page-media, _:future {
		font-family: sans-serif !important
	}
}
</style>
<style>/*
Copyright (c) 2010 by Typemade (hi@typemade.mx). All rights reserved.

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at: http://scripts.sil.org/OFL

—————————————————————————————-
SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
—————————————————————————————-
*/
/* latin */
@font-face {
	font-family: 'Josefin Slab';
	font-style: normal;
	font-weight: 600;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/josefinslab/v19/lW-swjwOK3Ps5GSJlNNkMalNpiZe_ldbOR4W74erR349Kg.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}

/*
Copyright (c) 2009 Dave Crossland <dave@lab6.com>

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at: http://scripts.sil.org/OFL

—————————————————————————————-
SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
—————————————————————————————-
*/
/* latin */
@font-face {
	font-family: 'Cantarell';
	font-style: italic;
	font-weight: 400;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/cantarell/v15/B50LF7ZDq37KMUvlO015iZJpNKs.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}
/* latin */
@font-face {
	font-family: 'Cantarell';
	font-style: italic;
	font-weight: 700;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/cantarell/v15/B50WF7ZDq37KMUvlO015iZrSEb6dDYs.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}
/* latin */
@font-face {
	font-family: 'Cantarell';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/cantarell/v15/B50NF7ZDq37KMUvlO015jKJr.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}
/* latin */
@font-face {
	font-family: 'Cantarell';
	font-style: normal;
	font-weight: 700;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/cantarell/v15/B50IF7ZDq37KMUvlO01xN4d-E46f.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}

/*
Damion-Regular.ttf: Copyright (c) 2011 by vernon adams. All rights reserved.

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at: http://scripts.sil.org/OFL

—————————————————————————————-
SIL OPEN FONT LICENSE Version 1.1 - 26 February 2007
—————————————————————————————-
*/
/* latin */
@font-face {
	font-family: 'Damion';
	font-style: normal;
	font-weight: 400;
	font-display: swap;
	src:
		url(https://img1.wsimg.com/gfonts/s/damion/v14/hv-XlzJ3KEUe_YZkamw2.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6,
		U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193,
		U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>
<style data-glamor="cxs-default-sheet">
.x .c1-1 {
	letter-spacing: normal
}

.x .c1-2 {
	text-transform: none
}

.x .c1-3 {
	background-color: black
}

.x .c1-4 {
	width: 100%
}

.x .c1-5>div {
	position: relative
}

.x .c1-6>div {
	overflow: hidden
}

.x .c1-7>div {
	margin-top: auto
}

.x .c1-8>div {
	margin-right: auto
}

.x .c1-9>div {
	margin-bottom: auto
}

.x .c1-a>div {
	margin-left: auto
}

.x .c1-b {
	font-family: Cantarell, '맑은 고딕', Gulim, '맑은 고딕', GulimChe, sans-serif
}

.x .c1-c {
	font-size: 16px
}

.x .c1-h {
	background-color: black
}

.x .c1-i {
	padding-top: 40px
}

.x .c1-j {
	padding-bottom: 40px
}

.x .c1-k {
	padding: 0 !important
}

.x .c1-l:before {
	content: ""
}

.x .c1-m:before {
	display: table
}

.x .c1-n:before {
	clear: both
}

.x .c1-o:after {
	content: ""
}

.x .c1-p:after {
	display: table
}

.x .c1-q:after {
	clear: both
}

.x .c1-t {
	position: relative
}

.x .c1-u {
	margin-bottom: 0px
}

.x .c1-w {
	margin-left: auto
}

.x .c1-x {
	margin-right: auto
}

.x .c1-y {
	padding-left: 24px
}

.x .c1-z {
	padding-right: 24px
}

.x .c1-10 {
	max-width: 100%
}

.x .c1-11 {
	display: none
}

.x .c1-13 {
	margin-top: 32px
}

.x .c1-14 {
	margin-bottom: 32px
}

.x .c1-19 {
	flex: 1
}

.x .c1-1a {
	display: flex
}

.x .c1-1b {
	justify-content: space-between
}

.x .c1-1c {
	align-items: center
}

.x .c1-1d {
	padding-top: 24px
}

.x .c1-1e {
	width: 30%
}

.x .c1-1f {
	justify-content: center
}

.x .c1-1g {
	text-align: center
}

.x .c1-1h {
	width: 40%
}

.x .c1-1i {
	display: inline-block
}

.x .c1-1j {
	font-family: Josefin Slab, '맑은 고딕', Malgun Gothic, sans-serif
}

.x .c1-1o {
	letter-spacing: inherit
}

.x .c1-1p {
	text-transform: inherit
}

.x .c1-1q {
	text-decoration: none
}

.x .c1-1r {
	word-wrap: break-word
}

.x .c1-1s {
	overflow-wrap: break-word
}

.x .c1-1t {
	display: inline
}

.x .c1-1u {
	cursor: pointer
}

.x .c1-1v {
	border-top: 0px
}

.x .c1-1w {
	border-right: 0px
}

.x .c1-1x {
	border-bottom: 0px
}

.x .c1-1y {
	border-left: 0px
}

.x .c1-1z {
	color: rgb(251, 208, 190)
}

.x .c1-20 {
	font-weight: inherit
}

.x .c1-21:hover {
	color: rgb(251, 208, 190)
}

.x .c1-22:active {
	color: rgb(251, 210, 193)
}

.x .c1-23 {
	letter-spacing: 0
}

.x .c1-24 {
	line-height: 1
}

.x .c1-25 {
	margin-top: 0
}

.x .c1-26 {
	font-family: '맑은 고딕', Georgia, serif
}

.x .c1-27 {
	padding-top: 8px
}

.x .c1-28 {
	padding-bottom: 8px
}

.x .c1-29 {
	padding-left: 16px
}

.x .c1-2a {
	padding-right: 16px
}

.x .c1-2b {
	width: fit-content
}

.x .c1-2c {
	color: rgb(247, 247, 247)
}

.x .c1-2d {
	font-size: 36px
}

.x .c1-2e {
	font-weight: 100
}

.x .c1-2k {
	word-wrap: normal !important
}

.x .c1-2l {
	overflow-wrap: normal !important
}

.x .c1-2m {
	visibility: hidden
}

.x .c1-2n {
	position: absolute
}

.x .c1-2o {
	width: auto
}

.x .c1-2p {
	overflow: visible
}

.x .c1-2q {
	left: 0px
}

.x .c1-2r {
	font-size: 32px
}

.x .c1-2w {
	font-size: 25px
}

.x .c1-31 {
	justify-content: flex-end
}

.x .c1-32 {
	padding-bottom: 24px
}

.x .c1-33 {
	line-height: 24px
}

.x .c1-34 {
	margin-left: 0
}

.x .c1-35 {
	margin-right: 0
}

.x .c1-36 {
	-webkit-margin-before: 0
}

.x .c1-37 {
	-webkit-margin-after: 0
}

.x .c1-38 {
	-webkit-padding-start: 0
}

.x .c1-39 {
	padding-top: 0
}

.x .c1-3a {
	padding-right: 0
}

.x .c1-3b {
	padding-bottom: 0
}

.x .c1-3c {
	padding-left: 0
}

.x .c1-3d {
	color: rgb(164, 164, 164)
}

.x .c1-3e {
	margin-bottom: none
}

.x .c1-3f {
	list-style: none
}

.x .c1-3g {
	vertical-align: top
}

.x .c1-3h {
	padding-left: 32px
}

.x .c1-3i {
	white-space: nowrap
}

.x .c1-3j:first-child {
	margin-left: 0
}

.x .c1-3k:first-child {
	padding-left: 0
}

.x .c1-3l {
	letter-spacing: 0.214em
}

.x .c1-3m {
	text-transform: uppercase
}

.x .c1-3n {
	display: block
}

.x .c1-3o {
	margin-left: -6px
}

.x .c1-3p {
	margin-right: -6px
}

.x .c1-3q {
	margin-top: -6px
}

.x .c1-3r {
	margin-bottom: -6px
}

.x .c1-3s {
	padding-left: 6px
}

.x .c1-3t {
	padding-right: 6px
}

.x .c1-3u {
	padding-top: 6px
}

.x .c1-3v {
	padding-bottom: 6px
}

.x .c1-3w {
	font-size: 14px
}

.x .c1-3x {
	font-weight: 400
}

.x .c1-3y:active {
	color: rgb(247, 247, 247)
}

.x .c1-43 {
	margin-bottom: -5px
}

.x .c1-44 {
	border-bottom: 1px solid
}

.x .c1-45 {
	border-color: rgb(251, 208, 190)
}

.x .c1-46 {
	padding-bottom: 4px
}

.x .c1-47 {
	color: inherit
}

.x .c1-48 {
	transition: transform .33s ease-in-out
}

.x .c1-49 {
	transform: rotate(0deg)
}

.x .c1-4a {
	vertical-align: middle
}

.x .c1-4b {
	border-radius: 0px
}

.x .c1-4c {
	box-shadow: 0 3px 6px 3px rgba(0, 0, 0, 0.16)
}

.x .c1-4d {
	background-color: black
}

.x .c1-4e {
	padding-top: 16px
}

.x .c1-4f {
	padding-bottom: 16px
}

.x .c1-4g {
	right: 0px
}

.x .c1-4h {
	top: 32px
}

.x .c1-4i {
	max-height: 45vh
}

.x .c1-4j {
	overflow-y: auto
}

.x .c1-4k {
	z-index: 1003
}

.x .c1-4n {
	text-align: left
}

.x .c1-4o:last-child {
	margin-bottom: 0
}

.x .c1-4p {
	margin-top: 8px
}

.x .c1-4q {
	margin-bottom: 8px
}

.x .c1-4r {
	line-height: 1.5
}

.x .c1-4t {
	width: 15%
}

.x .c1-4u { [
	object -object]: 0px
}

.x .c1-4v {
	justify-content: flex-start
}

.x .c1-4w {
	width: 70%
}

.x .c1-4x {
	background-color: black
}

.x .c1-4y {
	position: fixed
}

.x .c1-4z {
	top: 0px
}

.x .c1-50 {
	height: 100%
}

.x .c1-51 {
	z-index: 10002
}

.x .c1-52 {
	padding-top: 56px
}

.x .c1-53 {
	-webkit-overflow-scrolling: touch
}

.x .c1-54 {
	transform: translateX(-150vw)
}

.x .c1-55 {
	overscroll-behavior: contain
}

.x .c1-56 {
	box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.2)
}

.x .c1-57 {
	transition: transform .3s ease-in-out
}

.x .c1-58 {
	overflow: hidden
}

.x .c1-59 {
	flex-direction: column
}

.x .c1-5a {
	color: black
}

.x .c1-5b {
	line-height: 1.3em
}

.x .c1-5c {
	font-style: normal
}

.x .c1-5d {
	top: 15px
}

.x .c1-5e {
	right: 15px
}

.x .c1-5f {
	font-size: 28px
}

.x .c1-5g:hover {
	color: rgb(184, 138, 119)
}

.x .c1-5l {
	padding-right: 32px
}

.x .c1-5m {
	overflow-x: hidden
}

.x .c1-5n {
	overscroll-behavior: none
}

.x .c1-5o>:not(:first-child) {
	margin-top: 16px
}

.x .c1-5p {
	color: rgb(94, 94, 94)
}

.x .c1-5q {
	border-color: rgba(185, 185, 185, 0.5)
}

.x .c1-5r {
	border-bottom-width: 0px
}

.x .c1-5s {
	border-bottom-style: solid
}

.x .c1-5t:last-child {
	border-bottom: 0
}

.x .c1-5u {
	letter-spacing: 0.136em
}

.x .c1-5v {
	min-width: 200px
}

.x .c1-5w {
	color: rgb(27, 27, 27)
}

.x .c1-5x {
	font-size: 22px
}

.x .c1-5y:hover {
	color: rgb(153, 108, 89)
}

.x .c1-5z:active {
	color: rgb(153, 108, 89)
}

.x .c1-65 {
	font-weight: 700
}

.x .c1-66 {
	margin-bottom: 24px
}

.x .c1-68 {
	letter-spacing: 0.125em
}

.x .c1-69 {
	line-height: 1.4
}

.x .c1-6b {
	font-size: unset
}

.x .c1-6c {
	font-family: unset
}

.x .c1-6d {
	letter-spacing: unset
}

.x .c1-6e {
	text-transform: unset
}

.x .c1-6f {
	box-sizing: border-box
}

.x .c1-6g {
	flex-direction: row
}

.x .c1-6h {
	flex-wrap: wrap
}

.x .c1-6i {
	margin-right: -12px
}

.x .c1-6j {
	margin-left: -12px
}

.x .c1-6n {
	flex-grow: 1
}

.x .c1-6o {
	flex-shrink: 1
}

.x .c1-6p {
	flex-basis: 0%
}

.x .c1-6q {
	padding-right: 12px
}

.x .c1-6r {
	padding-left: 12px
}

.x .c1-6w {
	margin-left: 0 !important
}

.x .c1-6x {
	border-bottom: 1px solid #bfbfbf
}

.x .c1-6z {
	flex-basis: 100%
}

.x .c1-70 {
	margin-bottom: 4px
}

.x .c1-71 {
	letter-spacing: 0.031em
}

.x .c1-72 {
	line-height: 1.25
}

.x .c1-73 {
	font-weight: 600
}

.x .c1-74 {
	letter-spacing: 0.045em
}

.x .c1-75 {
	color: rgb(226, 226, 226)
}

.x .c1-76 {
	padding-left: 8px
}

.x .c1-77 {
	padding-right: 8px
}

.x .c1-78 {
	margin-top: 16px
}

.x .c1-79 {
	color: rgb(145, 145, 145)
}

.x .c1-7a {
	font-size: inherit !important
}

.x .c1-7b {
	line-height: inherit
}

.x .c1-7c {
	font-style: italic
}

.x .c1-7d {
	text-decoration: line-through
}

.x .c1-7e {
	text-decoration: underline
}

.x .c1-7f>:nth-child(2) {
	margin-left: .25em
}

.x .c1-7g {
	user-select: none
}

.x .c1-7h:active {
	color: rgb(251, 208, 190)
}

.x .c1-7j {
	padding-left: 0px !important
}

.x .c1-7o {
	padding-right: 0px !important
}

.x .c1-7p {
	text-align: right
}

.x .c1-7q {
	padding-top: 32px
}

.x .c1-7r {
	padding-bottom: 32px
}

.x .c1-7s {
	border-color: #999
}

.x .c1-7t {
	border-bottom-width: 1px
}

.x .c1-7u {
	border-style: solid
}

.x .c1-7v {
	flex-grow: 3
}

.x .c1-7y {
	letter-spacing: 0.083em
}

.x .c1-7z {
	color: rgb(150, 150, 150)
}

.x .c1-80 {
	font-size: 12px
}

.x .c1-86 {
	margin-top: 24px
}

.x .c1-89 {
	right: 0px
}

.x .c1-8a {
	z-index: 10000
}

.x .c1-8b {
	height: auto
}

.x .c1-8c {
	background-color: black
}

.x .c1-8d {
	transition: all 1s ease-in
}

.x .c1-8e {
	box-shadow: 0 2px 6px 0px rgba(0, 0, 0, 0.3)
}

.x .c1-8f {
	contain: content
}

.x .c1-8g {
	bottom: -500px
}

.x .c1-8o {
	color: rgb(0, 0, 0)
}

.x .c1-8p {
	max-height: 300px
}

.x .c1-8q {
	color: rgb(76, 60, 52)
}

.x .c1-8s {
	transition: all 0.3s
}

.x .c1-8t {
	word-break: break-word
}

.x .c1-8u {
	flex-basis: 50%
}

.x .c1-8v {
	border-style: none
}

.x .c1-8w {
	padding-top: 4px
}

.x .c1-8x {
	min-height: 40px
}

.x .c1-8y {
	color: rgb(219, 219, 219)
}

.x .c1-8z {
	text-shadow: none
}

.x .c1-90:hover {
	background-color: black
}

.x .c1-92:nth-child(2) {
	margin-left: 24px
}
</style>
<style data-glamor="cxs-xs-sheet">
@media ( max-width : 767px) {
	.x .c1-r {
		padding-top: 32px
	}
}

@media ( max-width : 767px) {
	.x .c1-s {
		padding-bottom: 32px
	}
}

@media ( max-width : 767px) {
	.x .c1-1k {
		width: 100%
	}
}

@media ( max-width : 767px) {
	.x .c1-1l {
		display: flex
	}
}

@media ( max-width : 767px) {
	.x .c1-1m {
		justify-content: center
	}
}
</style>
<style data-glamor="cxs-sm-sheet">
@media ( min-width : 768px) {
	.x .c1-d {
		font-size: 16px
	}
}

@media ( min-width : 768px) {
	.x .c1-v {
		margin-bottom: 0px
	}
}

@media ( min-width : 768px) {
	.x .c1-15 {
		width: 100%
	}
}

@media ( min-width : 768px) and (max-width: 1023px) {
	.x .c1-1n {
		width: 100%
	}
}

@media ( min-width : 768px) {
	.x .c1-2f {
		font-size: 43px
	}
}

@media ( min-width : 768px) {
	.x .c1-2s {
		font-size: 34px
	}
}

@media ( min-width : 768px) {
	.x .c1-2x {
		font-size: 25px
	}
}

@media ( min-width : 768px) {
	.x .c1-3z {
		font-size: 14px
	}
}

@media ( min-width : 768px) and (max-width: 1023px) {
	.x .c1-4m {
		right: 0px
	}
}

@media ( min-width : 768px) {
	.x .c1-5h {
		font-size: 30px
	}
}

@media ( min-width : 768px) {
	.x .c1-60 {
		font-size: 22px
	}
}

@media ( min-width : 768px) {
	.x .c1-67 {
		margin-bottom: 32px
	}
}

@media ( min-width : 768px) {
	.x .c1-6k {
		margin-top: 0
	}
}

@media ( min-width : 768px) {
	.x .c1-6l {
		margin-right: -24px
	}
}

@media ( min-width : 768px) {
	.x .c1-6m {
		margin-left: -24px
	}
}

@media ( min-width : 768px) {
	.x .c1-6s {
		padding-top: 0
	}
}

@media ( min-width : 768px) {
	.x .c1-6t {
		padding-right: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-6u {
		padding-bottom: 0
	}
}

@media ( min-width : 768px) {
	.x .c1-6v {
		padding-left: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-6y {
		display: none
	}
}

@media ( min-width : 768px) {
	.x .c1-7i {
		display: flex
	}
}

@media ( min-width : 768px) {
	.x .c1-7k {
		flex-basis: 25%
	}
}

@media ( min-width : 768px) {
	.x .c1-7l {
		max-width: 25%
	}
}

@media ( min-width : 768px) {
	.x .c1-7m {
		flex-basis: 50%
	}
}

@media ( min-width : 768px) {
	.x .c1-7n {
		max-width: 50%
	}
}

@media ( min-width : 768px) {
	.x .c1-81 {
		font-size: 12px
	}
}

@media ( min-width : 768px) {
	.x .c1-8h {
		width: 400px
	}
}

@media ( min-width : 768px) {
	.x .c1-8i {
		max-height: 500px
	}
}

@media ( min-width : 768px) {
	.x .c1-8j {
		border-radius: 7px
	}
}

@media ( min-width : 768px) {
	.x .c1-8k {
		margin-top: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-8l {
		margin-right: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-8m {
		margin-bottom: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-8n {
		margin-left: 24px
	}
}

@media ( min-width : 768px) {
	.x .c1-8r {
		max-height: 140px
	}
}

@media ( min-width : 768px) {
	.x .c1-93 {
		width: auto
	}
}
</style>
<style data-glamor="cxs-md-sheet">
@media ( min-width : 1024px) {
	.x .c1-e {
		font-size: 16px
	}
}

@media ( min-width : 1024px) {
	.x .c1-12 {
		display: block
	}
}

@media ( min-width : 1024px) {
	.x .c1-16 {
		width: 984px
	}
}

@media ( min-width : 1024px) {
	.x .c1-2g {
		overflow-wrap: break-word
	}
}

@media ( min-width : 1024px) {
	.x .c1-2h {
		font-size: 43px
	}
}

@media ( min-width : 1024px) {
	.x .c1-2t {
		font-size: 34px
	}
}

@media ( min-width : 1024px) {
	.x .c1-2y {
		font-size: 25px
	}
}

@media ( min-width : 1024px) {
	.x .c1-40 {
		font-size: 14px
	}
}

@media ( min-width : 1024px) and (max-width: 1279px) {
	.x .c1-4l {
		right: 0px
	}
}

@media ( min-width : 1024px) {
	.x .c1-4s {
		display: none
	}
}

@media ( min-width : 1024px) {
	.x .c1-5i {
		font-size: 30px
	}
}

@media ( min-width : 1024px) {
	.x .c1-61 {
		min-width: 300px
	}
}

@media ( min-width : 1024px) {
	.x .c1-62 {
		font-size: 22px
	}
}

@media ( min-width : 1024px) {
	.x .c1-6a {
		margin-bottom: 0px
	}
}

@media ( min-width : 1024px) {
	.x .c1-7w {
		flex-basis: 0%
	}
}

@media ( min-width : 1024px) {
	.x .c1-7x {
		max-width: none
	}
}

@media ( min-width : 1024px) {
	.x .c1-82 {
		text-align: left
	}
}

@media ( min-width : 1024px) {
	.x .c1-83 {
		font-size: 12px
	}
}

@media ( min-width : 1024px) {
	.x .c1-87 {
		text-align: right
	}
}

@media ( min-width : 1024px) {
	.x .c1-88 {
		margin-top: 0
	}
}

@media ( min-width : 1024px) {
	.x .c1-91:hover {
		box-shadow: 0 10px 10px -10px rgba(0, 0, 0, 0.5)
	}
}
</style>
<style data-glamor="cxs-lg-sheet">
@media ( min-width : 1280px) {
	.x .c1-f {
		font-size: 16px
	}
}

@media ( min-width : 1280px) {
	.x .c1-17 {
		width: 1160px
	}
}

@media ( min-width : 1280px) {
	.x .c1-2i {
		font-size: 50px
	}
}

@media ( min-width : 1280px) {
	.x .c1-2u {
		font-size: 36px
	}
}

@media ( min-width : 1280px) {
	.x .c1-2z {
		font-size: 25px
	}
}

@media ( min-width : 1280px) {
	.x .c1-41 {
		font-size: 14px
	}
}

@media ( min-width : 1280px) {
	.x .c1-5j {
		font-size: 32px
	}
}

@media ( min-width : 1280px) {
	.x .c1-63 {
		font-size: 22px
	}
}

@media ( min-width : 1280px) {
	.x .c1-84 {
		font-size: 12px
	}
}
</style>
<style data-glamor="cxs-xl-sheet">
@media ( min-width : 1536px) {
	.x .c1-g {
		font-size: 18px
	}
}

@media ( min-width : 1536px) {
	.x .c1-18 {
		width: 1280px
	}
}

@media ( min-width : 1536px) {
	.x .c1-2j {
		font-size: 54px
	}
}

@media ( min-width : 1536px) {
	.x .c1-2v {
		font-size: 41px
	}
}

@media ( min-width : 1536px) {
	.x .c1-30 {
		font-size: 27px
	}
}

@media ( min-width : 1536px) {
	.x .c1-42 {
		font-size: 16px
	}
}

@media ( min-width : 1536px) {
	.x .c1-5k {
		font-size: 36px
	}
}

@media ( min-width : 1536px) {
	.x .c1-64 {
		font-size: 24px
	}
}

@media ( min-width : 1536px) {
	.x .c1-85 {
		font-size: 14px
	}
}
</style>
<style>
.page-inner {
	background-color: black;
	min-height: 100vh;
}
</style>
<script>
	"use strict";

	if ('serviceWorker' in navigator) {
		window.addEventListener('load', function() {
			navigator.serviceWorker.register('/sw.js');
		});
	}
</script>
</head>
<body class="x  x-fonts-josefin-slab">
	<jsp:include page="header.jsp" />
	<div id="layout-e-8247414-6962-4-c-92-a-637-d-1-d-57-b-3-f-2-ccc"
		class="layout layout-layout layout-layout-layout-27 locale-ko-KR lang-ko">
		<div data-ux="Page" id="page-25469"
			class="x-el x-el-div x-el c1-1 c1-2 c1-3 c1-4 c1-5 c1-6 c1-7 c1-8 c1-9 c1-a c1-b c1-c c1-d c1-e c1-f c1-g c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
			<div data-ux="Block"
				class="x-el x-el-div page-inner c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
				<div id="799892f5-0e44-4aba-8f35-ac6e797b2297"
					class="widget widget-header widget-header-header-9">
					<div data-ux="Header" role="main" data-aid="HEADER_WIDGET"
						id="n-25470"
						class="x-el x-el-div x-el x-el c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g c1-1 c1-2 c1-h c1-b c1-c c1-d c1-e c1-f c1-g c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
						<div>
							<section data-ux="Section" data-aid="HEADER_SECTION"
								class="x-el x-el-section c1-1 c1-2 c1-h c1-i c1-j c1-k c1-b c1-c c1-l c1-m c1-n c1-o c1-p c1-q c1-r c1-s c1-d c1-e c1-f c1-g">
								<div data-ux="Block"
									class="x-el x-el-div c1-1 c1-2 c1-t c1-u c1-b c1-c c1-v c1-d c1-e c1-f c1-g">
									<div data-ux="Block"
										class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
										<div data-ux="ContainerFluid"
											class="x-el x-el-div c1-1 c1-2 c1-w c1-x c1-y c1-z c1-10 c1-t c1-b c1-c c1-d c1-e c1-f c1-g">
											<div data-ux="Block"
												class="x-el x-el-div c1-1 c1-2 c1-11 c1-b c1-c c1-d c1-12 c1-e c1-f c1-g">
												<nav data-ux="Container"
													class="x-el x-el-nav c1-1 c1-2 c1-w c1-x c1-y c1-z c1-10 c1-4 c1-13 c1-14 c1-b c1-c c1-15 c1-d c1-16 c1-e c1-17 c1-f c1-18 c1-g">
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-19 c1-1a c1-1b c1-1c c1-1d c1-b c1-c c1-d c1-e c1-f c1-g">
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-1e c1-b c1-c c1-d c1-e c1-f c1-g"></div>
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-1f c1-1g c1-1h c1-b c1-c c1-d c1-e c1-f c1-g">
															<div data-ux="Block" data-aid="HEADER_LOGO_RENDERED"
																class="x-el x-el-div c1-1i c1-1j c1-10 c1-4 c1-c c1-1k c1-1l c1-1m c1-1n c1-d c1-e c1-f c1-g">
																<a rel="" role="link" aria-haspopup="menu"
																	data-ux="Link"
																	data-page="b0f318c4-87f1-46c8-8e03-c6bce7d28abd"
																	title="경기소식" href="/" data-typography="LinkAlpha"
																	class="x-el x-el-a c1-1o c1-1p c1-1q c1-1r c1-1s c1-1t c1-1u c1-1v c1-1w c1-1x c1-1y c1-10 c1-4 c1-b c1-1z c1-c c1-20 c1-21 c1-22 c1-d c1-e c1-f c1-g"
																	data-tccl="ux2.HEADER.header9.Logo.Default.Link.Default.25473.click,click">
																	<div data-ux="Block" id="logo-container-25474"
																		class="x-el x-el-div c1-1 c1-2 c1-1i c1-4 c1-t c1-b c1-c c1-d c1-e c1-f c1-g">
																		<h3 role="heading" aria-level="3"
																			data-ux="LogoHeading" id="logo-text-25475"
																			data-aid="HEADER_LOGO_TEXT_RENDERED"
																			data-typography="LogoAlpha"
																			class="x-el x-el-h3 c1-23 c1-2 c1-1r c1-1s c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-1i c1-26 c1-1g c1-27 c1-28 c1-29 c1-2a c1-2b c1-2c c1-2d c1-2e c1-2f c1-2g c1-2h c1-2i c1-2j">경기소식</h3>
																		<span role="heading" aria-level="NaN" data-ux="scaler"
																			data-size="xxlarge"
																			data-scaler-id="scaler-logo-container-25474"
																			aria-hidden="true" data-typography="LogoAlpha"
																			class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2d c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2f c1-2g c1-2h c1-2i c1-2j">경기소식</span>
																		<span role="heading" aria-level="NaN" data-ux="scaler"
																			data-size="xlarge"
																			data-scaler-id="scaler-logo-container-25474"
																			aria-hidden="true" data-typography="LogoAlpha"
																			class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2r c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2s c1-2g c1-2t c1-2u c1-2v">경기소식</span>
																		<span role="heading" aria-level="NaN" data-ux="scaler"
																			data-size="large"
																			data-scaler-id="scaler-logo-container-25474"
																			aria-hidden="true" data-typography="LogoAlpha"
																			class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2w c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2x c1-2g c1-2y c1-2z c1-30">경기소식</span>
																	</div>
																</a>
															</div>
														</div>
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-1a c1-31 c1-1e c1-b c1-c c1-d c1-e c1-f c1-g"></div>
													</div>
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-19 c1-1a c1-1b c1-1c c1-1d c1-32 c1-b c1-c c1-d c1-e c1-f c1-g">
														<div data-ux="Block" id="navBar-25472"
															class="x-el x-el-div c1-1 c1-2 c1-19 c1-1a c1-1f c1-b c1-c c1-d c1-e c1-f c1-g">
															<nav data-ux="Nav" data-aid="HEADER_NAV_RENDERED"
																role="navigation"
																class="x-el x-el-nav c1-1 c1-2 c1-10 c1-33 c1-b c1-c c1-d c1-e c1-f c1-g">
																<ul data-ux="List" id="nav-25476"
																	class="x-el x-el-ul c1-1 c1-2 c1-25 c1-u c1-34 c1-35 c1-36 c1-37 c1-38 c1-t c1-39 c1-3a c1-3b c1-3c c1-b c1-c c1-d c1-e c1-f c1-g">

																	<li data-ux="ListItemInline"
																		class="x-el x-el-li nav-item c1-1 c1-2 c1-3d c1-34 c1-3e c1-1i c1-3f c1-3g c1-3h c1-3i c1-t c1-2m c1-b c1-c c1-3j c1-3k c1-d c1-e c1-f c1-g">
																		<div data-ux="Element" id="bs-1"
																			class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">

																			<div
																				style="pointer-events: none; display: flex; align-items: center"
																				data-aid="NAV_MORE">
																				<span style="margin-right: 4px"></span>
																				<svg viewBox="0 0 24 24" fill="currentColor"
																					width="16" height="16" data-ux="Icon"
																					class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-48 c1-49 c1-4a c1-t c1-b c1-3w c1-3z c1-40 c1-41 c1-42">
																						<path fill-rule="evenodd"
																						d="M19.774 7.86c.294-.335.04-.839-.423-.84L4.538 7c-.447-.001-.698.48-.425.81l7.204 8.693a.56.56 0 0 0 .836.011l7.621-8.654z"></path></svg>
																			</div>
																		</div>
																	</li>
																</ul>
															</nav>
														</div>
													</div>
												</nav>
											</div>
											<div data-ux="Block"
												class="x-el x-el-div c1-1 c1-2 c1-1a c1-b c1-c c1-d c1-4s c1-e c1-f c1-g">
												<nav data-ux="Block"
													class="x-el x-el-nav c1-1 c1-2 c1-4 c1-b c1-c c1-d c1-e c1-f c1-g">
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-4 c1-1a c1-1b c1-1c c1-1d c1-32 c1-b c1-c c1-d c1-e c1-f c1-g">
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-4t c1-39 c1-3a c1-3b c1-3c c1-4u c1-b c1-c c1-d c1-e c1-f c1-g">
															<div data-ux="Element" id="bs-2"
																class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
															</div>
														</div>
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-4w c1-1g c1-1a c1-b c1-c c1-d c1-e c1-f c1-g">
															<div data-ux="Block" data-aid="HEADER_LOGO_RENDERED"
																class="x-el x-el-div c1-1i c1-1j c1-10 c1-4 c1-c c1-1k c1-1l c1-1m c1-1n c1-d c1-e c1-f c1-g">

																<div data-ux="Block" id="logo-container-25491"
																	class="x-el x-el-div c1-1 c1-2 c1-1i c1-4 c1-t c1-b c1-c c1-d c1-e c1-f c1-g">
																	<h3 role="heading" aria-level="3" data-ux="LogoHeading"
																		id="logo-text-25492"
																		data-aid="HEADER_LOGO_TEXT_RENDERED"
																		data-typography="LogoAlpha"
																		class="x-el x-el-h3 c1-23 c1-2 c1-1r c1-1s c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-1i c1-26 c1-1g c1-27 c1-28 c1-29 c1-2a c1-2b c1-2c c1-2d c1-2e c1-2f c1-2g c1-2h c1-2i c1-2j">경기소식</h3>
																	<span role="heading" aria-level="NaN" data-ux="scaler"
																		data-size="xxlarge"
																		data-scaler-id="scaler-logo-container-25491"
																		aria-hidden="true" data-typography="LogoAlpha"
																		class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2d c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2f c1-2g c1-2h c1-2i c1-2j">경기소식</span><span
																		role="heading" aria-level="NaN" data-ux="scaler"
																		data-size="xlarge"
																		data-scaler-id="scaler-logo-container-25491"
																		aria-hidden="true" data-typography="LogoAlpha"
																		class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2r c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2s c1-2g c1-2t c1-2u c1-2v">경기소식</span><span
																		role="heading" aria-level="NaN" data-ux="scaler"
																		data-size="large"
																		data-scaler-id="scaler-logo-container-25491"
																		aria-hidden="true" data-typography="LogoAlpha"
																		class="x-el x-el-span c1-23 c1-2 c1-2k c1-2l c1-24 c1-w c1-x c1-25 c1-u c1-10 c1-11 c1-26 c1-2m c1-2n c1-2o c1-2p c1-2q c1-2w c1-1g c1-27 c1-28 c1-29 c1-2a c1-2c c1-2e c1-2x c1-2g c1-2y c1-2z c1-30">경기소식</span>
																</div>
															</div>
														</div>
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-4t c1-39 c1-3a c1-3b c1-3c c1-4u c1-b c1-c c1-d c1-e c1-f c1-g"></div>
													</div>
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-y c1-z c1-b c1-c c1-d c1-e c1-f c1-g">
														<svg viewBox="0 0 24 24" fill="currentColor" width="40px"
															height="40px" data-ux="NavigationDrawerCloseIcon"
															data-edit-interactive="true" data-close="true"
															class="x-el x-el-svg c1-1 c1-2 c1-5a c1-1i c1-4a c1-3u c1-3t c1-3v c1-3s c1-1u c1-5b c1-5c c1-2n c1-5d c1-5e c1-5f c1-b c1-5g c1-5h c1-5i c1-5j c1-5k">
																<path fill-rule="evenodd"
																d="M19.245 4.313a1.065 1.065 0 0 0-1.508 0L11.78 10.27 5.82 4.313A1.065 1.065 0 1 0 4.312 5.82l5.958 5.958-5.958 5.959a1.067 1.067 0 0 0 1.508 1.508l5.959-5.958 5.958 5.958a1.065 1.065 0 1 0 1.508-1.508l-5.958-5.959 5.958-5.958a1.065 1.065 0 0 0 0-1.508"></path></svg>
													</div>
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-1a c1-4v c1-1c c1-14 c1-59 c1-5o c1-b c1-c c1-d c1-e c1-f c1-g"></div>
													<div data-ux="Block"
														class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-3n c1-d c1-4s c1-e c1-f c1-g"></div>

												</nav>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div id="981f0631-c01b-48a7-b7e4-39b1ed80344e"
					class="widget widget-calendar widget-calendar-calendar-1">
					<div data-ux="Widget" role="region"
						id="981f0631-c01b-48a7-b7e4-39b1ed80344e"
						class="x-el x-el-div x-el c1-1 c1-2 c1-h c1-b c1-c c1-d c1-e c1-f c1-g c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
						<div>
							<div></div>
							<section data-ux="Section"
								class="x-el x-el-section c1-1 c1-2 c1-h c1-i c1-j c1-b c1-c c1-r c1-s c1-d c1-e c1-f c1-g">
								<div data-ux="Container"
									class="x-el x-el-div c1-1 c1-2 c1-w c1-x c1-y c1-z c1-10 c1-b c1-c c1-15 c1-d c1-16 c1-e c1-17 c1-f c1-18 c1-g">
									<div data-ux="Intro"
										class="x-el x-el-div x-el c1-1 c1-2 c1-66 c1-4n c1-b c1-c c1-67 c1-d c1-e c1-f c1-g c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
										<h1 role="heading" aria-level="1" data-ux="SectionHeading"
											data-aid="CALENDAR_SECTION_TITLE_RENDERED"
											data-promoted-from="2" data-order="0"
											data-typography="HeadingBeta"
											class="x-el x-el-h1 c1-68 c1-3m c1-1r c1-1s c1-69 c1-34 c1-35 c1-25 c1-u c1-4n c1-b c1-c c1-1z c1-3x c1-67 c1-d c1-6a c1-e c1-f c1-g">
											<span data-ux="Element" class="">경기일정</span>
										</h1>
									</div>
									<div data-ux="Group"
										class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
										<div data-ux="Element"
											id="981f0631-c01b-48a7-b7e4-39b1ed80344e-bootstrap-container"
											class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
											<div data-ux="Block"
												class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
												<style>
.cal-nav-arrow {
	opacity: .8;
	cursor: pointer;
}

.cal-nav-arrow:hover {
	opacity: 1;
}
</style>
												<a id="pi9g6"></a>
												<div data-ux="Grid"
													class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-d c1-e c1-f c1-g">
													<div data-ux="GridCell"
														class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
														<div data-ux="Block"
															class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
															<div data-ux="Block"
																class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																<div data-ux="Grid"
																	class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6w c1-4 c1-6x c1-39 c1-j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-d c1-e c1-f c1-g">
																	<div data-ux="GridCell"
																		class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																		<div data-ux="Grid"
																			data-aid="CALENDAR_SMALLER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-35 c1-u c1-34 c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-6y c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-6q c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-3a c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 4세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">28분
																							55초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt"></div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25497.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																		</div>
																		<div data-ux="Grid"
																			data-aid="CALENDAR_BIGGER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-11 c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-7i c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-7j c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-4n c1-b c1-c c1-7m c1-7n c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 4세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt">
																						<p style="margin: 0">
																							<span>Gen.G eSports : T1</span>
																						</p>
																						<p style="margin: 0">
																							<span>KILL SCORE 4 : 21<br> K4 D21 A8
																								KDA0.6 : K21 D4 A39 KDA15&nbsp;
																							</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Doran 킬관여율 50%
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
																								&nbsp;&nbsp;&nbsp;T1 Zeus 킬관여율 52%&nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Peanut 킬...</span>
																						</p>
																					</div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25498.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-7o c1-3b c1-6r c1-7p c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">28분
																							55초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div data-ux="Block"
																class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																<div data-ux="Grid"
																	class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6w c1-4 c1-6x c1-i c1-j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-d c1-e c1-f c1-g">
																	<div data-ux="GridCell"
																		class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																		<div data-ux="Grid"
																			data-aid="CALENDAR_SMALLER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-35 c1-u c1-34 c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-6y c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-6q c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-3a c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 3세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">37분
																							27초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt"></div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25499.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																		</div>
																		<div data-ux="Grid"
																			data-aid="CALENDAR_BIGGER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-11 c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-7i c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-7j c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-4n c1-b c1-c c1-7m c1-7n c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 3세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt">
																						<p style="margin: 0">
																							<span>Gen.G eSports : T1&nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>KILL SCORE 3 : 15</span>
																						</p>
																						<p style="margin: 0">
																							<span>K3 D15 A7 KDA0.7 : K15 D3 A22
																								KDA12.3 &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Doran 킬관여율 100%
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
																								&nbsp;&nbsp;&nbsp;T1 Zeus 킬관여율 47% &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Pea...</span>
																						</p>
																					</div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25500.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-7o c1-3b c1-6r c1-7p c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">37분
																							27초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div data-ux="Block"
																class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																<div data-ux="Grid"
																	class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6w c1-4 c1-6x c1-i c1-j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-d c1-e c1-f c1-g">
																	<div data-ux="GridCell"
																		class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																		<div data-ux="Grid"
																			data-aid="CALENDAR_SMALLER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-35 c1-u c1-34 c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-6y c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-6q c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-3a c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 2세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">36분
																							38초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt"></div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25501.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																		</div>
																		<div data-ux="Grid"
																			data-aid="CALENDAR_BIGGER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-11 c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-7i c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-7j c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-4n c1-b c1-c c1-7m c1-7n c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 2세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt">
																						<p style="margin: 0">
																							<span>Gen.G eSports : T1&nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>KILL SCORE 29 : 17</span>
																						</p>
																						<p style="margin: 0">
																							<span>K29 D17 A43 KDA4.2 : K17 D29 A35
																								KDA1.8 &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Doran 킬관여율 62%
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
																								&nbsp;&nbsp;&nbsp;T1 Zeus 킬관여율 65% &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN P...</span>
																						</p>
																					</div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25502.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-7o c1-3b c1-6r c1-7p c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">36분
																							38초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div data-ux="Block"
																class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																<div data-ux="Grid"
																	class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6w c1-4 c1-6x c1-i c1-j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-d c1-e c1-f c1-g">
																	<div data-ux="GridCell"
																		class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																		<div data-ux="Grid"
																			data-aid="CALENDAR_SMALLER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-1a c1-6f c1-6g c1-6h c1-25 c1-35 c1-u c1-34 c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-6y c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-6q c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6z c1-10 c1-39 c1-3a c1-3b c1-3c c1-70 c1-b c1-c c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 1세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">30분
																							9초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt"></div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25503.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																		</div>
																		<div data-ux="Grid"
																			data-aid="CALENDAR_BIGGER_SCREEN_CONTAINER"
																			class="x-el x-el-div c1-1 c1-2 c1-11 c1-6f c1-6g c1-6h c1-25 c1-6i c1-u c1-6j c1-b c1-c c1-6k c1-6l c1-v c1-6m c1-7i c1-d c1-e c1-f c1-g">
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-7j c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block" data-aid="CALENDAR_EVENT_DATE"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h3 role="heading" aria-level="3"
																							data-ux="DisplayHeading"
																							data-typography="HeadingEpsilon"
																							class="x-el x-el-h3 c1-71 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1j c1-1z c1-5f c1-73 c1-5h c1-5i c1-5j c1-5k">2022년
																							04월 02일</h3>
																					</div>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-6q c1-3b c1-6r c1-4n c1-b c1-c c1-7m c1-7n c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<h4 role="heading" aria-level="4"
																					data-ux="HeadingMinor"
																					data-typography="HeadingDelta"
																					class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">2022
																					LCK 스프링 포트 시즌 결승전 1세트</h4>
																				<div data-ux="Block" data-aid="CALENDAR_DESC"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Text" data-aid="CALENDAR_DESC_TEXT"
																						data-typography="BodyAlpha"
																						class="x-el c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g x-rt">
																						<p style="margin: 0">
																							<span>Gen.G eSports : T1&nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>KILL SCORE 8 : 15</span>
																						</p>
																						<p style="margin: 0">
																							<span>K8 D15 A17 KDA1.7 : K15 D8 A32
																								KDA5.9 &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Doran 킬관여율 50%
																								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
																								&nbsp;&nbsp;&nbsp;T1 Zeus 킬관여율 47% &nbsp;</span>
																						</p>
																						<p style="margin: 0">
																							<span>GEN Pean...</span>
																						</p>
																					</div>
																					<span rel="" role="button" aria-haspopup="menu"
																						aria-expanded="false" data-ux="MoreLinkExpand"
																						data-aid="CALENDAR_DESC_EXPAND"
																						data-typography="LinkAlpha"
																						class="x-el x-el-span c1-1o c1-1p c1-1q c1-1r c1-1s c1-1i c1-1u c1-7f c1-78 c1-7g c1-b c1-1z c1-c c1-20 c1-21 c1-7h c1-d c1-e c1-f c1-g"
																						data-tccl="ux2.CALENDAR.calendar1.Group.Default.MoreLink.Expand.25504.click,click"><svg
																							viewBox="0 0 24 24" fill="currentColor"
																							width="1em" height="1em" data-ux="Icon"
																							data-aid="plus"
																							class="x-el x-el-svg c1-1 c1-2 c1-47 c1-1i c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">
																							<path fill-rule="evenodd"
																								d="M19.799 11.899a1 1 0 0 0-1-1H12.9V5a1 1 0 0 0-2 0v5.899H5a1 1 0 1 0 0 2h5.9v5.899a1 1 0 1 0 2 0v-5.899h5.899a1 1 0 0 0 1-1"></path></svg><span
																						data-ux="Element"
																						class="x-el x-el-span c1-1 c1-2 c1-4a c1-b c1-c c1-d c1-e c1-f c1-g">이벤트
																							세부 정보</span></span>
																				</div>
																			</div>
																			<div data-ux="GridCell"
																				class="x-el x-el-div c1-1 c1-2 c1-6f c1-6n c1-6o c1-6p c1-10 c1-39 c1-7o c1-3b c1-6r c1-7p c1-b c1-c c1-7k c1-7l c1-6s c1-6t c1-6u c1-6v c1-d c1-e c1-f c1-g">
																				<div data-ux="Block" data-aid="CALENDAR_EVENT_TIME"
																					class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																					<div data-ux="Block"
																						class="x-el x-el-div c1-1 c1-2 c1-b c1-c c1-d c1-e c1-f c1-g">
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">PLAY
																							Time</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-76 c1-77 c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">
																							-</h4>
																						<h4 role="heading" aria-level="4"
																							data-ux="HeadingMinor"
																							data-typography="HeadingDelta"
																							class="x-el x-el-h4 c1-74 c1-2 c1-1r c1-1s c1-72 c1-34 c1-35 c1-25 c1-u c1-1i c1-b c1-75 c1-5x c1-3x c1-60 c1-62 c1-63 c1-64">30분
																							9초</h4>
																					</div>
																				</div>
																				<p data-ux="Text" data-typography="BodyAlpha"
																					class="x-el x-el-p c1-1 c1-2 c1-1r c1-1s c1-4r c1-78 c1-u c1-b c1-79 c1-c c1-3x c1-d c1-e c1-f c1-g">LCK
																					아레나 경기장</p>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		"IntersectionObserver" in window
				&& "Intl" in window
				&& "Locale" in window.Intl
				|| document
						.write(`\x3Cscript src="https://img1.wsimg.com/poly/v3/polyfill.min.js?rum=0&unknown=polyfill&flags=gated&features=Intl.~locale.ko-KR">\x3C/script>`)
	</script>
	<script
		src="//img1.wsimg.com/blobby/go/e8247414-6962-4c92-a637-d1d57b3f2ccc/gpub/3dadf09f7206df8d/script.js"
		crossorigin></script>
	<script
		src="//img1.wsimg.com/ceph-p3-01/website-builder-data-prod/static/widgets/UX.4.21.15.js"
		crossorigin></script>
	<script
		src="//img1.wsimg.com/blobby/go/e8247414-6962-4c92-a637-d1d57b3f2ccc/gpub/7bda8f4b5054adc0/script.js"
		crossorigin></script>
	<script defer src="//img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js"
		crossorigin></script>
</body>
</html>