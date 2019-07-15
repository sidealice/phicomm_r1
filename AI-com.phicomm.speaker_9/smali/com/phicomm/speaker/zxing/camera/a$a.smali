.class final Lcom/phicomm/speaker/zxing/camera/a$a;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/zxing/camera/a;
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
.field final synthetic a:Lcom/phicomm/speaker/zxing/camera/a;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/zxing/camera/a;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/a$a;->a:Lcom/phicomm/speaker/zxing/camera/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/zxing/camera/a;Lcom/phicomm/speaker/zxing/camera/a$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/zxing/camera/a$a;-><init>(Lcom/phicomm/speaker/zxing/camera/a;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 123
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/camera/a$a;->a:Lcom/phicomm/speaker/zxing/camera/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/a;->a()V

    const/4 p1, 0x0

    return-object p1
.end method
