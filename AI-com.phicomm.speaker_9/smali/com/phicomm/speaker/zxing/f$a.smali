.class final Lcom/phicomm/speaker/zxing/f$a;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/zxing/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/zxing/f;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/zxing/f;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/f$a;->a:Lcom/phicomm/speaker/zxing/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/zxing/f;Lcom/phicomm/speaker/zxing/f$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/zxing/f$a;-><init>(Lcom/phicomm/speaker/zxing/f;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0x493e0

    .line 106
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 107
    invoke-static {}, Lcom/phicomm/speaker/zxing/f;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finishing activity due to inactivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/f$a;->a:Lcom/phicomm/speaker/zxing/f;

    invoke-static {p1}, Lcom/phicomm/speaker/zxing/f;->b(Lcom/phicomm/speaker/zxing/f;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
