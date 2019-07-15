.class public Lcom/phicomm/speaker/activity/yanry/function/WikiActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "WikiActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;Landroid/view/View;)V
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

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'tvWeather\'"

    .line 17
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvWeather:Landroid/widget/TextView;

    const-string v0, "field \'tvTime\'"

    .line 18
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902af

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvTime:Landroid/widget/TextView;

    const-string v0, "field \'tvPeople\'"

    .line 19
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ad

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvPeople:Landroid/widget/TextView;

    const-string v0, "field \'tvHoliday\'"

    .line 20
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ac

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHoliday:Landroid/widget/TextView;

    const-string v0, "field \'tvEnglish\'"

    .line 21
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvEnglish:Landroid/widget/TextView;

    const-string v0, "field \'tvHistory\'"

    .line 22
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ab

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHistory:Landroid/widget/TextView;

    const-string v0, "field \'tvProperNoun\'"

    .line 23
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ae

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvProperNoun:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;

    .line 29
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvWeather:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvTime:Landroid/widget/TextView;

    .line 33
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvPeople:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHoliday:Landroid/widget/TextView;

    .line 35
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvEnglish:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHistory:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvProperNoun:Landroid/widget/TextView;

    return-void
.end method
