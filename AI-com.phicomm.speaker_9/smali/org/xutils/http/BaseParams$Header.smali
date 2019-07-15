.class public final Lorg/xutils/http/BaseParams$Header;
.super Lorg/xutils/common/util/KeyValue;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/BaseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public final setHeader:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 526
    invoke-direct {p0, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    iput-boolean p3, p0, Lorg/xutils/http/BaseParams$Header;->setHeader:Z

    return-void
.end method
