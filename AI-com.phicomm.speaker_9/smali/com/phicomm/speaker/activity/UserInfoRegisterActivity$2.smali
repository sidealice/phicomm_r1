.class Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;
.super Ljava/lang/Object;
.source "UserInfoRegisterActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)Lcom/phicomm/speaker/popup/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/popup/b;->a(III)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvBirthday:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    if-ge p2, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p3, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
