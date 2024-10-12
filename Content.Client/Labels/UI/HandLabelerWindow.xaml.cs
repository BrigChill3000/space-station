using Robust.Client.UserInterface.CustomControls;
using Robust.Client.AutoGenerated;
using Robust.Client.UserInterface.XAML;

namespace Content.Client.Labels.UI
{
    [GenerateTypedNameReferences]
    public sealed partial class HandLabelerWindow : DefaultWindow
    {
        public event Action<string>? OnLabelChanged;

        /// <summary>
        /// Is the user currently entering text into the control?
        /// </summary>
        private bool _focused;
        // TODO LineEdit Make this a bool on the LineEdit control

        private string _label = string.Empty;

        public HandLabelerWindow()
        {
            RobustXamlLoader.Load(this);

            LabelLineEdit.OnTextChanged += e =>
            {
                _label = e.Text;
                OnLabelChanged?.Invoke(_label);
            };

            LabelLineEdit.OnFocusEnter += _ => _focused = true;
            LabelLineEdit.OnFocusExit += _ =>
            {
                _focused = false;
                LabelLineEdit.Text = _label;
            };

            // Give the editor keybard focus, since that's the only
            // thing the user will want to be doing with this UI
            LabelLineEdit.GrabKeyboardFocus();
        }

        public void SetCurrentLabel(string label)
        {
            if (label == _label)
                return;

            _label = label;
            if (!_focused)
                LabelLineEdit.Text = label;
        }

        public void SetMaxLabelLength(int maxLength)
        {
            LabelLineEdit.IsValid = s => s.Length <= maxLength;
        }
    }
}
