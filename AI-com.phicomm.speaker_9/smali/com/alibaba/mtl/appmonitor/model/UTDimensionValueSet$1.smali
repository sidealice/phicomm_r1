.class final Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;
.super Ljava/util/HashSet;
.source "UTDimensionValueSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/alibaba/mtl/log/model/LogField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 24
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->PAGE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG1:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARG3:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ARGS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
