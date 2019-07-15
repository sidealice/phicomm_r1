.class Lnluparser/e$a$1;
.super Ljava/lang/Object;
.source "NluProcessor.java"

# interfaces
.implements Lnluparser/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnluparser/e$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnluparser/e$a;


# direct methods
.method constructor <init>(Lnluparser/e$a;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lnluparser/e$a$1;->a:Lnluparser/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lnluparser/f$a;

    invoke-direct {v0}, Lnluparser/f$a;-><init>()V

    invoke-virtual {v0}, Lnluparser/f$a;->a()Ljava/util/Map;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lnluparser/e$a$1;->a:Lnluparser/e$a;

    invoke-static {v1}, Lnluparser/e$a;->a(Lnluparser/e$a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
