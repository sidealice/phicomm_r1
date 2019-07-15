.class Lnluparser/NluProcessor$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnluparser/NluProcessor$Builder;->ensureSaneDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnluparser/NluProcessor$Builder;


# direct methods
.method constructor <init>(Lnluparser/NluProcessor$Builder;)V
    .locals 0

    iput-object p1, p0, Lnluparser/NluProcessor$Builder$1;->a:Lnluparser/NluProcessor$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnluparser/d$a;

    invoke-direct {v0}, Lnluparser/d$a;-><init>()V

    invoke-virtual {v0}, Lnluparser/d$a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnluparser/NluProcessor$Builder$1;->a:Lnluparser/NluProcessor$Builder;

    invoke-static {v1}, Lnluparser/NluProcessor$Builder;->access$000(Lnluparser/NluProcessor$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
