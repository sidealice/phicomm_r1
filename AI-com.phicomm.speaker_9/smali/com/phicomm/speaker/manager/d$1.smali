.class Lcom/phicomm/speaker/manager/d$1;
.super Lcom/phicomm/speaker/presenter/b/p;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/manager/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/manager/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/AppUpdate;)V
    .locals 2

    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/phicomm/speaker/PhApplication;->a:Z

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/manager/d;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app_new_vercode"

    .line 80
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AppUpdate;->getVer_code()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/d;->c(Lcom/phicomm/speaker/manager/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/manager/d;->b(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "301"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "302"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "303"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 64
    sput-boolean p1, Lcom/phicomm/speaker/PhApplication;->a:Z

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/manager/d;)V

    .line 67
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$1;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->b(Lcom/phicomm/speaker/manager/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
