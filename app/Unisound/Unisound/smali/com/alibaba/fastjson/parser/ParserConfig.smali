.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field private static global:Lcom/alibaba/fastjson/parser/ParserConfig;


# instance fields
.field private final derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    .line 118
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 120
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Time;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/sql/Timestamp;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JSONObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONArray;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JSONArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ClassDerializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, [C

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CharArrayDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/serializer/UUIDCodec;->instance:Lcom/alibaba/fastjson/serializer/UUIDCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/serializer/TimeZoneCodec;->instance:Lcom/alibaba/fastjson/serializer/TimeZoneCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LocaleCodec;->instance:Lcom/alibaba/fastjson/serializer/LocaleCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CurrencyCodec;->instance:Lcom/alibaba/fastjson/serializer/CurrencyCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetSocketAddressCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/serializer/URICodec;->instance:Lcom/alibaba/fastjson/serializer/URICodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/serializer/URLCodec;->instance:Lcom/alibaba/fastjson/serializer/URLCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/serializer/PatternCodec;->instance:Lcom/alibaba/fastjson/serializer/PatternCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharsetCodec;->instance:Lcom/alibaba/fastjson/serializer/CharsetCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 356
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 359
    :cond_0
    if-nez v0, :cond_1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 362
    :cond_1
    return-object v0
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 367
    .local v2, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 366
    .restart local v2    # "item":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "item":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    .line 372
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .line 375
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method


# virtual methods
.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 2
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 320
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 339
    :goto_0
    return-object v1

    .line 323
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_3

    .line 324
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/IntegerFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 327
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 328
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 331
    :cond_5
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_6

    .line 332
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 335
    :cond_6
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_8

    .line 336
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 339
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-direct {v1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 1
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public getDerializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 4
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 254
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 309
    :goto_0
    return-object v3

    .line 258
    :cond_0
    if-nez p2, :cond_1

    .line 259
    move-object p2, p1

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 263
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_2

    move-object v3, v1

    .line 264
    goto :goto_0

    .line 268
    :cond_2
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 269
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_3

    .line 270
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v2

    .line 271
    .local v2, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Void;

    if-eq v2, v3, :cond_3

    .line 272
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    goto :goto_0

    .line 277
    .end local v2    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v3, p2, Ljava/lang/reflect/WildcardType;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 278
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 281
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_5
    if-eqz v1, :cond_6

    move-object v3, v1

    .line 282
    goto :goto_0

    .line 285
    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 286
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_7

    move-object v3, v1

    .line 287
    goto :goto_0

    .line 290
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 291
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;-><init>(Ljava/lang/Class;)V

    .line 307
    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    move-object v3, v1

    .line 309
    goto :goto_0

    .line 292
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 293
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    goto :goto_1

    .line 294
    :cond_9
    const-class v3, Ljava/util/Set;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/HashSet;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/Collection;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/List;

    if-eq p1, v3, :cond_a

    const-class v3, Ljava/util/ArrayList;

    if-ne p1, v3, :cond_b

    .line 296
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    goto :goto_1

    .line 297
    :cond_b
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 298
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/CollectionDeserializer;

    goto :goto_1

    .line 299
    :cond_c
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 300
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    goto :goto_1

    .line 301
    :cond_d
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 302
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    .end local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-direct {v1, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    .restart local v1    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_1

    .line 304
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    goto :goto_1
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 232
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v0, :cond_0

    .line 249
    .end local v0    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_0
    return-object v0

    .line 236
    .restart local v0    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 237
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 241
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 242
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 243
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 245
    .restart local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_0

    .line 249
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    goto :goto_0
.end method

.method public getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 381
    .local v0, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_0

    .line 382
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializerMap()Ljava/util/Map;

    move-result-object v1

    .line 384
    :goto_0
    return-object v1

    .restart local v0    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->primitiveClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->derializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    return-void
.end method
