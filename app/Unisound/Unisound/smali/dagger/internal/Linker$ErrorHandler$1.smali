.class final Ldagger/internal/Linker$ErrorHandler$1;
.super Ljava/lang/Object;
.source "Linker.java"

# interfaces
.implements Ldagger/internal/Linker$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Linker$ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
