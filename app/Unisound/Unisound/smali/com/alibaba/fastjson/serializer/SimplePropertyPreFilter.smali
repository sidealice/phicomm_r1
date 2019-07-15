.class public Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.super Ljava/lang/Object;
.source "SimplePropertyPreFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/PropertyPreFilter;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 5
    .param p2, "properties"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    .line 25
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    .line 33
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    .line 34
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 35
    .local v2, "item":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 36
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "properties"    # [Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    if-nez p2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getExcludes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    return-object v0
.end method

.method public getIncludes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    return-object v0
.end method
