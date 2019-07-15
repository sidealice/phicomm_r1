.class public Lnluparser/MixtureProcessor$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/MixtureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private classifier:Lnluparser/a$a;

.field private converter:Lnluparser/b$a;

.field private final mappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private typeMapping:Lnluparser/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnluparser/MixtureProcessor$Builder;->mappers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lnluparser/MixtureProcessor$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lnluparser/MixtureProcessor$Builder;

    .prologue
    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->mappers:Ljava/util/Map;

    return-object v0
.end method

.method private ensureSaneDefaults()V
    .locals 1

    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->classifier:Lnluparser/a$a;

    if-nez v0, :cond_0

    invoke-static {}, Lnluparser/a/b;->a()Lnluparser/a/b;

    move-result-object v0

    iput-object v0, p0, Lnluparser/MixtureProcessor$Builder;->classifier:Lnluparser/a$a;

    :cond_0
    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->converter:Lnluparser/b$a;

    if-nez v0, :cond_1

    invoke-static {}, Lnluparser/b/b;->a()Lnluparser/b/b;

    move-result-object v0

    iput-object v0, p0, Lnluparser/MixtureProcessor$Builder;->converter:Lnluparser/b$a;

    :cond_1
    new-instance v0, Lnluparser/MixtureProcessor$Builder$1;

    invoke-direct {v0, p0}, Lnluparser/MixtureProcessor$Builder$1;-><init>(Lnluparser/MixtureProcessor$Builder;)V

    iput-object v0, p0, Lnluparser/MixtureProcessor$Builder;->typeMapping:Lnluparser/d;

    return-void
.end method


# virtual methods
.method public build()Lnluparser/MixtureProcessor;
    .locals 4

    invoke-direct {p0}, Lnluparser/MixtureProcessor$Builder;->ensureSaneDefaults()V

    new-instance v0, Lnluparser/MixtureProcessor;

    iget-object v1, p0, Lnluparser/MixtureProcessor$Builder;->typeMapping:Lnluparser/d;

    iget-object v2, p0, Lnluparser/MixtureProcessor$Builder;->converter:Lnluparser/b$a;

    iget-object v3, p0, Lnluparser/MixtureProcessor$Builder;->classifier:Lnluparser/a$a;

    invoke-direct {v0, v1, v2, v3}, Lnluparser/MixtureProcessor;-><init>(Lnluparser/d;Lnluparser/b$a;Lnluparser/a$a;)V

    return-object v0
.end method

.method public registerTypeMapper(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/MixtureProcessor$Builder;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->mappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->mappers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public registerTypeMapper(Ljava/util/Map;)Lnluparser/MixtureProcessor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnluparser/MixtureProcessor$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "mappers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnluparser/MixtureProcessor$Builder;->mappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setClassifier(Lnluparser/a$a;)Lnluparser/MixtureProcessor$Builder;
    .locals 0
    .param p1, "classifier"    # Lnluparser/a$a;

    .prologue
    iput-object p1, p0, Lnluparser/MixtureProcessor$Builder;->classifier:Lnluparser/a$a;

    return-object p0
.end method

.method public setConverter(Lnluparser/b$a;)Lnluparser/MixtureProcessor$Builder;
    .locals 0
    .param p1, "converter"    # Lnluparser/b$a;

    .prologue
    iput-object p1, p0, Lnluparser/MixtureProcessor$Builder;->converter:Lnluparser/b$a;

    return-object p0
.end method
