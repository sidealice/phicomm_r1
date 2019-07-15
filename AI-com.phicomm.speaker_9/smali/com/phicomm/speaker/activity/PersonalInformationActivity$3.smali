.class Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;
.super Ljava/lang/Object;
.source "PersonalInformationActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/PersonalInformationActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

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

    .line 269
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    new-instance p1, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;-><init>()V

    .line 271
    iget-object p2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setBirthday(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/presenter/s;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/s;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    .line 273
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Z)Z

    return-void
.end method
