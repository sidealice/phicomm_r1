.class Lnluparser/MixtureProcessor$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnluparser/MixtureProcessor$Builder;->ensureSaneDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnluparser/MixtureProcessor$Builder;


# direct methods
.method constructor <init>(Lnluparser/MixtureProcessor$Builder;)V
    .locals 0

    iput-object p1, p0, Lnluparser/MixtureProcessor$Builder$1;->a:Lnluparser/MixtureProcessor$Builder;

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

    new-instance v0, Lnluparser/c$a;

    invoke-direct {v0}, Lnluparser/c$a;-><init>()V

    invoke-virtual {v0}, Lnluparser/c$a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnluparser/MixtureProcessor$Builder$1;->a:Lnluparser/MixtureProcessor$Builder;

    invoke-static {v1}, Lnluparser/MixtureProcessor$Builder;->access$000(Lnluparser/MixtureProcessor$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
