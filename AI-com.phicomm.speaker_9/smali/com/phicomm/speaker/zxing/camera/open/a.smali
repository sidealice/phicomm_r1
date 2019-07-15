.class public final Lcom/phicomm/speaker/zxing/camera/open/a;
.super Ljava/lang/Object;
.source "OpenCamera.java"


# instance fields
.field private final a:I

.field private final b:Landroid/hardware/Camera;

.field private final c:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

.field private final d:I


# direct methods
.method public constructor <init>(ILandroid/hardware/Camera;Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->a:I

    .line 30
    iput-object p2, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->b:Landroid/hardware/Camera;

    .line 31
    iput-object p3, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->c:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    .line 32
    iput p4, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/Camera;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->b:Landroid/hardware/Camera;

    return-object v0
.end method

.method public b()Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->c:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->c:Lcom/phicomm/speaker/zxing/camera/open/CameraFacing;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/zxing/camera/open/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
