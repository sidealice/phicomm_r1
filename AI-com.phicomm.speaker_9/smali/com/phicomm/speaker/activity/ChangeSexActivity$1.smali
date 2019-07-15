.class Lcom/phicomm/speaker/activity/ChangeSexActivity$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "ChangeSexActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeSexActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeSexActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeSexActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    invoke-static {v3}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a(Lcom/phicomm/speaker/activity/ChangeSexActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b(Lcom/phicomm/speaker/activity/ChangeSexActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a(Lcom/phicomm/speaker/activity/ChangeSexActivity;I)V

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSexActivity;

    const p2, 0x7f0f021f

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
