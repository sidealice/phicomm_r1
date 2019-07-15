.class Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;
.super Lcom/phicomm/speaker/presenter/b/s;
.source "VoiceCommandDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/VoiceCommandBean;)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "=====getCommandInfoSuccess"

    .line 72
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 75
    new-instance v0, Lcom/phicomm/speaker/adapter/r;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getCommand_words()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/phicomm/speaker/adapter/r;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->lvCommands:Lcom/phicomm/speaker/views/MyListView;

    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/views/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getIcon_url()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getIcon_url()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    new-instance v2, Lcom/phicomm/speaker/views/a/a;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    .line 80
    invoke-virtual {v3}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800e6

    invoke-direct {v2, v3, v4}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v4, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 81
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->ivIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvDetailTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvVoiceCommandDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getSkill_introduction()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0f012c

    .line 87
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method
