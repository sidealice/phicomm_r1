.class public Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FunctionFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/FunctionFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/FunctionFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/FunctionFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FunctionFragment;

    const-string v0, "field \'tvMsgMusic\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMusic:Landroid/widget/TextView;

    const-string v0, "field \'tvMsgFm\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgFm:Landroid/widget/TextView;

    const-string v0, "field \'tvMsgMemo\'"

    .line 39
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMemo:Landroid/widget/TextView;

    const-string v0, "field \'tvMsgWiki\'"

    .line 40
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgWiki:Landroid/widget/TextView;

    const-string v0, "method \'enterMusic\'"

    const v1, 0x7f09010d

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->b:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$1;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterFm\'"

    const v1, 0x7f0900fe

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->c:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$2;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterMemo\'"

    const v1, 0x7f09010a

    .line 57
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->d:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterWiki\'"

    const v1, 0x7f090145

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->e:Landroid/view/View;

    .line 67
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$4;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterCalendar\'"

    const v1, 0x7f0900e3

    .line 73
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->f:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$5;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterAlarm\'"

    const v1, 0x7f0900d5

    .line 81
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->g:Landroid/view/View;

    .line 83
    new-instance v1, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$6;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'enterCountdown\'"

    const v1, 0x7f0900ef

    .line 89
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 90
    iput-object p2, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->h:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$7;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FunctionFragment;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 105
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMusic:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgFm:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMemo:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgWiki:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->b:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->c:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->d:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->e:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->f:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->g:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->h:Landroid/view/View;

    .line 125
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/FunctionFragment;

    return-void
.end method
