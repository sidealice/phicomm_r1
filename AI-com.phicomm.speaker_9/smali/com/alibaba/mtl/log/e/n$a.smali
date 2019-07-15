.class Lcom/alibaba/mtl/log/e/n$a;
.super Ljava/lang/Object;
.source "RC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public d:[I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 13
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/mtl/log/e/n$a;->d:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mtl/log/e/n$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/log/e/n$a;-><init>()V

    return-void
.end method
