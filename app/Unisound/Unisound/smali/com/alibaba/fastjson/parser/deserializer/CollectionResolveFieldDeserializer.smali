.class public final Lcom/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "CollectionResolveFieldDeserializer.java"


# instance fields
.field private final collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Collection;)V
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer;->collection:Ljava/util/Collection;

    .line 17
    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/CollectionResolveFieldDeserializer;->collection:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
