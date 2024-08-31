# https://github.com/Base24/base24-vscode/blob/master/templates/default.mustache
{
  scheme-name ? "theme",
  variant ? "dark",
  ...
} @ args:
with args; ''
  {
      "$schema": "vscode://schemas/color-theme",
      "name": "Base24 ${scheme-name}",
      "type": "${variant}",
      "colors": {
          "terminal.background": "#${base00}",
          "terminal.foreground": "#${base05}",
          "terminal.ansiBrightBlack": "#${base02}",
          "terminal.ansiBrightRed": "#${base12}",
          "terminal.ansiBrightGreen": "#${base14}",
          "terminal.ansiBrightYellow": "#${base13}",
          "terminal.ansiBrightBlue": "#${base16}",
          "terminal.ansiBrightMagenta": "#${base17}",
          "terminal.ansiBrightCyan": "#${base15}",
          "terminal.ansiBrightWhite": "#${base07}",
          "terminal.ansiBlack": "#${base01}",
          "terminal.ansiRed": "#${base08}",
          "terminal.ansiGreen": "#${base0B}",
          "terminal.ansiYellow": "#${base09}",
          "terminal.ansiBlue": "#${base0D}",
          "terminal.ansiMagenta": "#${base0E}",
          "terminal.ansiCyan": "#${base0C}",
          "terminal.ansiWhite": "#${base06}",
          "terminal.border": "#${base05}",
          "terminal.selectionBackground": "#${base01}50",
          "textBlockQuote.background": "#${base10}",
          "contrastBorder": "#${base11}",
          "focusBorder": "#${base03}",
          "foreground": "#${base05}",
          "widget.shadow": "#444444",
          "selection.background": "#${base0D}",
          "errorForeground": "#${base08}",
          "button.background": "#${base10}",
          "button.foreground": "#${base05}",
          "dropdown.background": "#${base00}",
          "dropdown.border": "#${base11}",
          "dropdown.foreground": "#${base05}",
          "input.background": "#${base00}",
          "input.foreground": "#${base05}",
          "input.border": "#${base11}",
          "input.placeholderForeground": "#${base03}",
          "inputOption.activeBorder": "#${base0D}",
          "inputValidation.infoForeground": "#${base0D}",
          "inputValidation.infoBackground": "#${base00}",
          "inputValidation.infoBorder": "#${base0D}",
          "inputValidation.warningForeground": "#${base09}",
          "inputValidation.warningBackground": "#${base00}",
          "inputValidation.warningBorder": "#${base09}",
          "inputValidation.errorForeground": "#${base08}",
          "inputValidation.errorBackground": "#${base00}",
          "inputValidation.errorBorder": "#${base08}",
          "scrollbar.shadow": "#444444",
          "badge.foreground": "#${base05}",
          "badge.background": "#${base01}",
          "progressBar.background": "#${base0E}",
          "list.activeSelectionBackground": "#${base01}",
          "list.activeSelectionForeground": "#${base05}",
          "list.dropBackground": "#${base01}",
          "list.focusBackground": "#${base02}75",
          "list.highlightForeground": "#${base0C}",
          "list.hoverBackground": "#${base02}75",
          "list.inactiveSelectionBackground": "#${base02}75",
          "list.warningForeground": "#${base09}",
          "list.errorForeground": "#${base08}",
          "activityBar.background": "#${base00}",
          "activityBar.inactiveForeground": "#${base03}",
          "activityBar.foreground": "#${base05}",
          "activityBar.activeBorder": "#${base0E}80",
          "activityBar.activeBackground": "#${base0D}10",
          "activityBarBadge.background": "#${base0E}",
          "activityBarBadge.foreground": "#${base00}",
          "sideBar.background": "#${base10}",
          "sideBarTitle.foreground": "#${base05}",
          "sideBarSectionHeader.background": "#${base00}",
          "sideBarSectionHeader.border": "#${base11}",
          "editorGroup.border": "#${base0D}",
          "editorGroup.dropBackground": "#${base02}70",
          "editorGroupHeader.tabsBackground": "#${base11}",
          "tab.activeBackground": "#${base00}",
          "tab.activeForeground": "#${base05}",
          "tab.border": "#${base11}",
          "tab.activeBorderTop": "#${base0E}80",
          "tab.inactiveBackground": "#${base10}",
          "tab.inactiveForeground": "#${base03}",
          "editor.foreground": "#${base05}",
          "editor.background": "#${base00}",
          "editorLineNumber.foreground": "#${base03}",
          "editor.selectionBackground": "#${base01}",
          "editor.selectionHighlightBackground": "#${base01}",
          "editor.foldBackground": "#${base10}",
          "editor.wordHighlightBackground": "#${base0C}50",
          "editor.wordHighlightStrongBackground": "#${base0B}50",
          "editor.findMatchBackground": "#${base09}80",
          "editor.findMatchHighlightBackground": "#${base07}40",
          "editor.findRangeHighlightBackground": "#${base02}75",
          "editor.hoverHighlightBackground": "#${base11}",
          "editor.lineHighlightBorder": "#${base01}",
          "editorLink.activeForeground": "#${base0C}",
          "editor.rangeHighlightBackground": "#${base0D}15",
          "editor.snippetTabstopHighlightBackground": "#${base00}",
          "editor.snippetTabstopHighlightBorder": "#${base03}",
          "editor.snippetFinalTabstopHighlightBackground": "#${base00}",
          "editor.snippetFinalTabstopHighlightBorder": "#${base0B}",
          "editorWhitespace.foreground": "#${base07}1A",
          "editorIndentGuide.background": "#${base07}1A",
          "editorIndentGuide.activeBackground": "#${base07}45",
          "editorRuler.foreground": "#${base07}1A",
          "editorCodeLens.foreground": "#${base03}",
          "editorOverviewRuler.border": "#${base11}",
          "editorOverviewRuler.selectionHighlightForeground": "#${base09}",
          "editorOverviewRuler.wordHighlightForeground": "#${base0C}",
          "editorOverviewRuler.wordHighlightStrongForeground": "#${base0B}",
          "editorOverviewRuler.modifiedForeground": "#${base0C}80",
          "editorOverviewRuler.addedForeground": "#${base0B}80",
          "editorOverviewRuler.deletedForeground": "#${base08}80",
          "editorOverviewRuler.errorForeground": "#${base08}80",
          "editorOverviewRuler.warningForeground": "#${base09}80",
          "editorOverviewRuler.infoForeground": "#${base0C}80",
          "editorError.foreground": "#${base08}",
          "editorWarning.foreground": "#${base09}",
          "editorGutter.modifiedBackground": "#${base0C}80",
          "editorGutter.addedBackground": "#${base0B}80",
          "editorGutter.deletedBackground": "#${base08}80",
          "gitDecoration.modifiedResourceForeground": "#${base0C}",
          "gitDecoration.deletedResourceForeground": "#${base08}",
          "gitDecoration.untrackedResourceForeground": "#${base0B}",
          "gitDecoration.ignoredResourceForeground": "#${base03}",
          "gitDecoration.conflictingResourceForeground": "#${base09}",
          "diffEditor.insertedTextBackground": "#${base0B}20",
          "diffEditor.removedTextBackground": "#${base08}50",
          "editorWidget.background": "#${base10}",
          "editorSuggestWidget.background": "#${base10}",
          "editorSuggestWidget.foreground": "#${base05}",
          "editorSuggestWidget.selectedBackground": "#${base01}",
          "editorHoverWidget.background": "#${base00}",
          "editorHoverWidget.border": "#${base03}",
          "editorMarkerNavigation.background": "#${base10}",
          "peekView.border": "#${base01}",
          "peekViewEditor.background": "#${base00}",
          "peekViewEditor.matchHighlightBackground": "#${base13}80",
          "peekViewResult.background": "#${base10}",
          "peekViewResult.fileForeground": "#${base05}",
          "peekViewResult.lineForeground": "#${base05}",
          "peekViewResult.matchHighlightBackground": "#${base13}80",
          "peekViewResult.selectionBackground": "#${base01}",
          "peekViewResult.selectionForeground": "#${base05}",
          "peekViewTitle.background": "#${base11}",
          "peekViewTitleDescription.foreground": "#${base03}",
          "peekViewTitleLabel.foreground": "#${base05}",
          "merge.currentHeaderBackground": "#${base0B}90",
          "merge.incomingHeaderBackground": "#${base0D}90",
          "editorOverviewRuler.currentContentForeground": "#${base0B}",
          "editorOverviewRuler.incomingContentForeground": "#${base0D}",
          "panel.background": "#${base00}",
          "panel.border": "#${base0D}",
          "panelInput.border": "#${base05}",
          "panelTitle.activeBorder": "#${base0E}",
          "panelTitle.activeForeground": "#${base05}",
          "panelTitle.inactiveForeground": "#${base03}",
          "statusBar.background": "#${base11}",
          "statusBar.foreground": "#${base05}",
          "statusBar.debuggingBackground": "#${base08}",
          "statusBar.debuggingForeground": "#${base11}",
          "statusBar.noFolderBackground": "#${base11}",
          "statusBar.noFolderForeground": "#${base05}",
          "statusBarItem.prominentBackground": "#${base08}",
          "statusBarItem.prominentHoverBackground": "#${base09}",
          "statusBarItem.remoteForeground": "#${base00}",
          "statusBarItem.remoteBackground": "#${base0D}",
          "titleBar.activeBackground": "#${base10}",
          "titleBar.activeForeground": "#${base05}",
          "titleBar.inactiveBackground": "#${base11}",
          "titleBar.inactiveForeground": "#${base03}",
          "notificationCenter.border": "#${base10}",
          "notificationCenterHeader.foreground": "#${base05}",
          "notificationCenterHeader.background": "#${base00}",
          "notificationToast.border": "#${base10}",
          "notifications.foreground": "#${base05}",
          "notifications.background": "#${base00}",
          "notifications.border": "#${base10}",
          "notificationLink.foreground": "#${base0C}",
          "notificationsErrorIcon.foreground": "#${base08}",
          "notificationsWarningIcon.foreground": "#${base09}",
          "notificationsInfoIcon.foreground": "#${base0D}",
          "notification.background": "#${base00}",
          "notification.foreground": "#${base05}",
          "notification.buttonBackground": "#${base01}",
          "notification.buttonForeground": "#${base05}",
          "notification.buttonHoverBackground": "#${base02}75",
          "notification.errorBackground": "#${base08}",
          "notification.errorForeground": "#${base00}",
          "notification.infoBackground": "#${base0D}",
          "notification.infoForeground": "#${base00}",
          "notification.warningBackground": "#${base09}",
          "notification.warningForeground": "#${base00}",
          "extensionButton.prominentForeground": "#${base05}",
          "extensionButton.prominentBackground": "#${base0B}90",
          "extensionButton.prominentHoverBackground": "#${base0B}60",
          "pickerGroup.border": "#${base0D}",
          "pickerGroup.foreground": "#${base0C}",
          "debugToolBar.background": "#${base10}",
          "welcomePage.buttonBackground": "#${base01}",
          "welcomePage.buttonHoverBackground": "#${base02}75",
          "walkThrough.embeddedEditorBackground": "#${base10}",
          "settings.headerForeground": "#${base05}",
          "settings.modifiedItemIndicator": "#${base09}",
          "settings.dropdownBackground": "#${base10}",
          "settings.dropdownForeground": "#${base05}",
          "settings.dropdownBorder": "#${base11}",
          "settings.checkboxBackground": "#${base10}",
          "settings.checkboxForeground": "#${base05}",
          "settings.checkboxBorder": "#${base11}",
          "checkbox.background": "#${base10}",
          "checkbox.foreground": "#${base05}",
          "checkbox.border": "#${base11}",
          "settings.textInputBackground": "#${base10}",
          "settings.textInputForeground": "#${base05}",
          "settings.textInputBorder": "#${base11}",
          "settings.numberInputBackground": "#${base10}",
          "settings.numberInputForeground": "#${base05}",
          "settings.numberInputBorder": "#${base11}",
          "breadcrumb.foreground": "#${base03}",
          "breadcrumb.background": "#${base00}",
          "breadcrumb.focusForeground": "#${base05}",
          "breadcrumb.activeSelectionForeground": "#${base05}",
          "breadcrumbPicker.background": "#${base11}",
          "listFilterWidget.background": "#${base00}",
          "listFilterWidget.outline": "#${base01}",
          "listFilterWidget.noMatchesOutline": "#${base08}"
      },
      "tokenColors": [
          {
              "scope": [
                  "emphasis"
              ],
              "settings": {
                  "fontStyle": "italic"
              }
          },
          {
              "scope": [
                  "strong"
              ],
              "settings": {
                  "fontStyle": "bold"
              }
          },
          {
              "scope": [
                  "header"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "scope": [
                  "source"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "scope": [
                  "meta.diff",
                  "meta.diff.header"
              ],
              "settings": {
                  "foreground": "#${base03}"
              }
          },
          {
              "scope": [
                  "markup.inserted"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "scope": [
                  "markup.deleted"
              ],
              "settings": {
                  "foreground": "#${base08}"
              }
          },
          {
              "scope": [
                  "markup.changed"
              ],
              "settings": {
                  "foreground": "#${base09}"
              }
          },
          {
              "scope": [
                  "invalid"
              ],
              "settings": {
                  "foreground": "#${base08}",
                  "fontStyle": "underline italic"
              }
          },
          {
              "scope": [
                  "invalid.deprecated"
              ],
              "settings": {
                  "foreground": "#${base05}",
                  "fontStyle": "underline italic"
              }
          },
          {
              "scope": [
                  "entity.name.filename"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "scope": [
                  "markup.error"
              ],
              "settings": {
                  "foreground": "#${base08}"
              }
          },
          {
              "name": "Underlined markup",
              "scope": [
                  "markup.underline"
              ],
              "settings": {
                  "fontStyle": "underline"
              }
          },
          {
              "name": "Bold markup",
              "scope": [
                  "markup.bold"
              ],
              "settings": {
                  "fontStyle": "bold",
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "Markup headings",
              "scope": [
                  "markup.heading"
              ],
              "settings": {
                  "fontStyle": "bold",
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Markup italic",
              "scope": [
                  "markup.italic"
              ],
              "settings": {
                  "foreground": "#${base13}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Bullets, lists (prose)",
              "scope": [
                  "beginning.punctuation.definition.list.markdown",
                  "beginning.punctuation.definition.quote.markdown",
                  "punctuation.definition.link.restructuredtext"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Inline code (prose)",
              "scope": [
                  "markup.inline.raw",
                  "markup.raw.restructuredtext"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Links (prose)",
              "scope": [
                  "markup.underline.link",
                  "markup.underline.link.image"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Link text, image alt text (prose)",
              "scope": [
                  "meta.link.reference.def.restructuredtext",
                  "punctuation.definition.directive.restructuredtext",
                  "string.other.link.description",
                  "string.other.link.title"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Blockquotes (prose)",
              "scope": [
                  "entity.name.directive.restructuredtext",
                  "markup.quote"
              ],
              "settings": {
                  "foreground": "#${base13}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Horizontal rule (prose)",
              "scope": [
                  "meta.separator.markdown"
              ],
              "settings": {
                  "foreground": "#${base03}"
              }
          },
          {
              "name": "Code blocks",
              "scope": [
                  "fenced_code.block.language",
                  "markup.raw.inner.restructuredtext",
                  "markup.fenced_code.block.markdown punctuation.definition.markdown"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Prose constants",
              "scope": [
                  "punctuation.definition.constant.restructuredtext"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Braces in markdown headings",
              "scope": [
                  "markup.heading.markdown punctuation.definition.string.begin",
                  "markup.heading.markdown punctuation.definition.string.end"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Braces in markdown paragraphs",
              "scope": [
                  "meta.paragraph.markdown punctuation.definition.string.begin",
                  "meta.paragraph.markdown punctuation.definition.string.end"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "Braces in markdown blockquotes",
              "scope": [
                  "markup.quote.markdown meta.paragraph.markdown punctuation.definition.string.begin",
                  "markup.quote.markdown meta.paragraph.markdown punctuation.definition.string.end"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "User-defined class names",
              "scope": [
                  "entity.name.type.class",
                  "entity.name.class"
              ],
              "settings": {
                  "foreground": "#${base0C}",
                  "fontStyle": "normal"
              }
          },
          {
              "name": "this, super, self, etc.",
              "scope": [
                  "keyword.expressions-and-types.swift",
                  "keyword.other.this",
                  "variable.language",
                  "variable.language punctuation.definition.variable.php",
                  "variable.other.readwrite.instance.ruby",
                  "variable.parameter.function.language.special"
              ],
              "settings": {
                  "foreground": "#${base0D}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Inherited classes",
              "scope": [
                  "entity.other.inherited-class"
              ],
              "settings": {
                  "fontStyle": "italic",
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Comments",
              "scope": [
                  "comment",
                  "punctuation.definition.comment",
                  "unused.comment",
                  "wildcard.comment"
              ],
              "settings": {
                  "foreground": "#${base03}"
              }
          },
          {
              "name": "JSDoc-style keywords",
              "scope": [
                  "comment keyword.codetag.notation",
                  "comment.block.documentation keyword",
                  "comment.block.documentation storage.type.class"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "JSDoc-style types",
              "scope": [
                  "comment.block.documentation entity.name.type"
              ],
              "settings": {
                  "foreground": "#${base0C}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "JSDoc-style type brackets",
              "scope": [
                  "comment.block.documentation entity.name.type punctuation.definition.bracket"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "JSDoc-style comment parameters",
              "scope": [
                  "comment.block.documentation variable"
              ],
              "settings": {
                  "foreground": "#${base09}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Constants",
              "scope": [
                  "constant",
                  "variable.other.constant"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Constant escape sequences",
              "scope": [
                  "constant.character.escape",
                  "constant.character.string.escape",
                  "constant.regexp"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "HTML tags",
              "scope": [
                  "entity.name.tag"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "CSS attribute parent selectors ('&')",
              "scope": [
                  "entity.other.attribute-name.parent-selector"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "HTML/CSS attribute names",
              "scope": [
                  "entity.other.attribute-name"
              ],
              "settings": {
                  "foreground": "#${base0B}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Function names",
              "scope": [
                  "entity.name.function",
                  "meta.function-call.generic",
                  "meta.function-call.object",
                  "meta.function-call.php",
                  "meta.function-call.static",
                  "meta.method-call.java meta.method",
                  "meta.method.groovy",
                  "support.function.any-method.lua",
                  "keyword.operator.function.infix"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Function parameters",
              "scope": [
                  "entity.name.variable.parameter",
                  "meta.at-rule.function variable",
                  "meta.at-rule.mixin variable",
                  "meta.function.arguments variable.other.php",
                  "meta.selectionset.graphql meta.arguments.graphql variable.arguments.graphql",
                  "variable.parameter"
              ],
              "settings": {
                  "fontStyle": "italic",
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "Decorators",
              "scope": [
                  "meta.decorator variable.other.readwrite",
                  "meta.decorator variable.other.property"
              ],
              "settings": {
                  "foreground": "#${base0B}",
                  "fontStyle": "italic"
              }
          },
          {
              "name": "Decorator Objects",
              "scope": [
                  "meta.decorator variable.other.object"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Keywords",
              "scope": [
                  "keyword",
                  "punctuation.definition.keyword"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Keyword \"new\"",
              "scope": [
                  "keyword.control.new",
                  "keyword.operator.new"
              ],
              "settings": {
                  "fontStyle": "bold"
              }
          },
          {
              "name": "Generic selectors (CSS/SCSS/Less/Stylus)",
              "scope": [
                  "meta.selector"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Language Built-ins",
              "scope": [
                  "support"
              ],
              "settings": {
                  "fontStyle": "italic",
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Built-in magic functions and constants",
              "scope": [
                  "support.function.magic",
                  "support.variable",
                  "variable.other.predefined"
              ],
              "settings": {
                  "fontStyle": "regular",
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Built-in functions / properties",
              "scope": [
                  "support.function",
                  "support.type.property-name"
              ],
              "settings": {
                  "fontStyle": "regular"
              }
          },
          {
              "name": "Separators (key/value, namespace, inheritance, pointer, hash, slice, etc)",
              "scope": [
                  "constant.other.symbol.hashkey punctuation.definition.constant.ruby",
                  "entity.other.attribute-name.placeholder punctuation",
                  "entity.other.attribute-name.pseudo-class punctuation",
                  "entity.other.attribute-name.pseudo-element punctuation",
                  "meta.group.double.toml",
                  "meta.group.toml",
                  "meta.object-binding-pattern-variable punctuation.destructuring",
                  "punctuation.colon.graphql",
                  "punctuation.definition.block.scalar.folded.yaml",
                  "punctuation.definition.block.scalar.literal.yaml",
                  "punctuation.definition.block.sequence.item.yaml",
                  "punctuation.definition.entity.other.inherited-class",
                  "punctuation.function.swift",
                  "punctuation.separator.dictionary.key-value",
                  "punctuation.separator.hash",
                  "punctuation.separator.inheritance",
                  "punctuation.separator.key-value",
                  "punctuation.separator.key-value.mapping.yaml",
                  "punctuation.separator.namespace",
                  "punctuation.separator.pointer-access",
                  "punctuation.separator.slice",
                  "string.unquoted.heredoc punctuation.definition.string",
                  "support.other.chomping-indicator.yaml",
                  "punctuation.separator.annotation"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Brackets, braces, parens, etc.",
              "scope": [
                  "keyword.operator.other.powershell",
                  "keyword.other.statement-separator.powershell",
                  "meta.brace.round",
                  "meta.function-call punctuation",
                  "punctuation.definition.arguments.begin",
                  "punctuation.definition.arguments.end",
                  "punctuation.definition.entity.begin",
                  "punctuation.definition.entity.end",
                  "punctuation.definition.tag.cs",
                  "punctuation.definition.type.begin",
                  "punctuation.definition.type.end",
                  "punctuation.section.scope.begin",
                  "punctuation.section.scope.end",
                  "storage.type.generic.java",
                  "string.template meta.brace",
                  "string.template punctuation.accessor"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "Variable interpolation operators",
              "scope": [
                  "meta.string-contents.quoted.double punctuation.definition.variable",
                  "punctuation.definition.interpolation.begin",
                  "punctuation.definition.interpolation.end",
                  "punctuation.definition.template-expression.begin",
                  "punctuation.definition.template-expression.end",
                  "punctuation.section.embedded.begin",
                  "punctuation.section.embedded.coffee",
                  "punctuation.section.embedded.end",
                  "punctuation.section.embedded.end source.php",
                  "punctuation.section.embedded.end source.ruby",
                  "punctuation.definition.variable.makefile"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Keys (serializable languages)",
              "scope": [
                  "entity.name.function.target.makefile",
                  "entity.name.section.toml",
                  "entity.name.tag.yaml",
                  "variable.other.key.toml"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Dates / timestamps (serializable languages)",
              "scope": [
                  "constant.other.date",
                  "constant.other.timestamp"
              ],
              "settings": {
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "YAML aliases",
              "scope": [
                  "variable.other.alias.yaml"
              ],
              "settings": {
                  "fontStyle": "italic underline",
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Storage",
              "scope": [
                  "storage",
                  "meta.implementation storage.type.objc",
                  "meta.interface-or-protocol storage.type.objc",
                  "source.groovy storage.type.def"
              ],
              "settings": {
                  "fontStyle": "regular",
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "Types",
              "scope": [
                  "entity.name.type",
                  "keyword.primitive-datatypes.swift",
                  "keyword.type.cs",
                  "meta.protocol-list.objc",
                  "meta.return-type.objc",
                  "source.go storage.type",
                  "source.groovy storage.type",
                  "source.java storage.type",
                  "source.powershell entity.other.attribute-name",
                  "storage.class.std.rust",
                  "storage.type.attribute.swift",
                  "storage.type.c",
                  "storage.type.core.rust",
                  "storage.type.cs",
                  "storage.type.groovy",
                  "storage.type.objc",
                  "storage.type.php",
                  "storage.type.haskell",
                  "storage.type.ocaml"
              ],
              "settings": {
                  "fontStyle": "italic",
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Generics, templates, and mapped type declarations",
              "scope": [
                  "entity.name.type.type-parameter",
                  "meta.indexer.mappedtype.declaration entity.name.type",
                  "meta.type.parameters entity.name.type"
              ],
              "settings": {
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "Modifiers",
              "scope": [
                  "storage.modifier"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "RegExp string",
              "scope": [
                  "string.regexp",
                  "constant.other.character-class.set.regexp",
                  "constant.character.escape.backslash.regexp"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "Non-capture operators",
              "scope": [
                  "punctuation.definition.group.capture.regexp"
              ],
              "settings": {
                  "foreground": "#${base0E}"
              }
          },
          {
              "name": "RegExp start and end characters",
              "scope": [
                  "string.regexp punctuation.definition.string.begin",
                  "string.regexp punctuation.definition.string.end"
              ],
              "settings": {
                  "foreground": "#${base08}"
              }
          },
          {
              "name": "Character group",
              "scope": [
                  "punctuation.definition.character-class.regexp"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Capture groups",
              "scope": [
                  "punctuation.definition.group.regexp"
              ],
              "settings": {
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "Assertion operators",
              "scope": [
                  "punctuation.definition.group.assertion.regexp",
                  "keyword.operator.negation.regexp"
              ],
              "settings": {
                  "foreground": "#${base08}"
              }
          },
          {
              "name": "Positive lookaheads",
              "scope": [
                  "meta.assertion.look-ahead.regexp"
              ],
              "settings": {
                  "foreground": "#${base0B}"
              }
          },
          {
              "name": "Strings",
              "scope": [
                  "string"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "String quotes (temporary vscode fix)",
              "scope": [
                  "punctuation.definition.string.begin",
                  "punctuation.definition.string.end"
              ],
              "settings": {
                  "foreground": "#${base0A}"
              }
          },
          {
              "name": "Property quotes (temporary vscode fix)",
              "scope": [
                  "punctuation.support.type.property-name.begin",
                  "punctuation.support.type.property-name.end"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Docstrings",
              "scope": [
                  "string.quoted.docstring.multi",
                  "string.quoted.docstring.multi.python punctuation.definition.string.begin",
                  "string.quoted.docstring.multi.python punctuation.definition.string.end",
                  "string.quoted.docstring.multi.python constant.character.escape"
              ],
              "settings": {
                  "foreground": "#${base03}"
              }
          },
          {
              "name": "Variables and object properties",
              "scope": [
                  "variable",
                  "constant.other.key.perl",
                  "support.variable.property",
                  "variable.other.constant.js",
                  "variable.other.constant.ts",
                  "variable.other.constant.tsx"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "Destructuring / aliasing reference name (LHS)",
              "scope": [
                  "meta.import variable.other.readwrite",
                  "meta.object-binding-pattern-variable variable.object.property",
                  "meta.variable.assignment.destructured.object.coffee variable"
              ],
              "settings": {
                  "fontStyle": "italic",
                  "foreground": "#${base09}"
              }
          },
          {
              "name": "Destructuring / aliasing variable name (RHS)",
              "scope": [
                  "meta.import variable.other.readwrite.alias",
                  "meta.export variable.other.readwrite.alias",
                  "meta.variable.assignment.destructured.object.coffee variable variable"
              ],
              "settings": {
                  "fontStyle": "normal",
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "GraphQL keys",
              "scope": [
                  "meta.selectionset.graphql variable"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "GraphQL function arguments",
              "scope": [
                  "meta.selectionset.graphql meta.arguments variable"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "GraphQL fragment name (definition)",
              "scope": [
                  "entity.name.fragment.graphql",
                  "variable.fragment.graphql"
              ],
              "settings": {
                  "foreground": "#${base0C}"
              }
          },
          {
              "name": "Edge cases (foreground color resets)",
              "scope": [
                  "constant.other.symbol.hashkey.ruby",
                  "keyword.operator.dereference.java",
                  "keyword.operator.navigation.groovy",
                  "meta.scope.for-loop.shell punctuation.definition.string.begin",
                  "meta.scope.for-loop.shell punctuation.definition.string.end",
                  "meta.scope.for-loop.shell string",
                  "storage.modifier.import",
                  "punctuation.section.embedded.begin.tsx",
                  "punctuation.section.embedded.end.tsx",
                  "punctuation.section.embedded.begin.jsx",
                  "punctuation.section.embedded.end.jsx",
                  "punctuation.separator.list.comma.css",
                  "constant.language.empty-list.haskell"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "Shell variables prefixed with \"$\" (edge case)",
              "scope": [
                  "source.shell variable.other"
              ],
              "settings": {
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Powershell constants mistakenly scoped to `support`, rather than `constant` (edge)",
              "scope": [
                  "support.constant"
              ],
              "settings": {
                  "fontStyle": "normal",
                  "foreground": "#${base0D}"
              }
          },
          {
              "name": "Makefile prerequisite names",
              "scope": [
                  "meta.scope.prerequisites.makefile"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "SCSS attibute selector strings",
              "scope": [
                  "meta.attribute-selector.scss"
              ],
              "settings": {
                  "foreground": "#${base13}"
              }
          },
          {
              "name": "SCSS attribute selector brackets",
              "scope": [
                  "punctuation.definition.attribute-selector.end.bracket.square.scss",
                  "punctuation.definition.attribute-selector.begin.bracket.square.scss"
              ],
              "settings": {
                  "foreground": "#${base05}"
              }
          },
          {
              "name": "Haskell Pragmas",
              "scope": [
                  "meta.preprocessor.haskell"
              ],
              "settings": {
                  "foreground": "#${base03}"
              }
          }
      ]
  }
''
