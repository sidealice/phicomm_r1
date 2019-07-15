.class final Lcom/phicomm/speaker/zxing/g;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/phicomm/speaker/zxing/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/zxing/ViewfinderView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/g;->a:Lcom/phicomm/speaker/zxing/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/g;->a:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/zxing/ViewfinderView;->a(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
