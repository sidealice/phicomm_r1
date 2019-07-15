.class public Lcom/alibaba/mtl/log/e/e$a;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public E:I

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 242
    iput v0, p0, Lcom/alibaba/mtl/log/e/e$a;->E:I

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    return-void
.end method
