.class public Lcom/alibaba/fastjson/serializer/ExceptionSerializer;
.super Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.source "ExceptionSerializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method
