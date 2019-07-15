.class Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;
.super Lcom/phicomm/speaker/presenter/b/q;
.source "ChoicenessQuesAnsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->mTvAdd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity$1;->a:Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;

    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/quesandans/ChoicenessQuesAnsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/a;

    invoke-direct {v1}, Lcom/phicomm/speaker/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/phicomm/speaker/a/o;-><init>(ILcom/phicomm/speaker/bean/CustumDetailBean;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
