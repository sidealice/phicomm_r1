.class Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;
.super Ljava/lang/Object;
.source "UserDefinedQaActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mTvMine:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mTvChoiceness:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->a(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mTvChoiceness:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->mTvMine:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->a(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
