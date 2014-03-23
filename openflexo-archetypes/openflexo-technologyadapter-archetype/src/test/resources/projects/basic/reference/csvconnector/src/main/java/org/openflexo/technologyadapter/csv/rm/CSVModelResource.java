package org.openflexo.technologyadapter.csv.rm;

import org.openflexo.foundation.resource.FlexoFileResource;
import org.openflexo.foundation.technologyadapter.FlexoModelResource;
import org.openflexo.model.annotations.Getter;
import org.openflexo.model.annotations.ImplementationClass;
import org.openflexo.model.annotations.ModelEntity;
import org.openflexo.model.annotations.Setter;
import org.openflexo.technologyadapter.csv.CSVTechnologyContextManager;
import org.openflexo.technologyadapter.csv.model.CSVMetaModel;
import org.openflexo.technologyadapter.csv.model.CSVModel;

@ModelEntity
@ImplementationClass(CSVModelResourceImpl.class)
public abstract interface CSVModelResource extends FlexoFileResource<CSVModel>, FlexoModelResource<CSVModel, CSVMetaModel>
{
  public static final String TECHNOLOGY_CONTEXT_MANAGER = "technologyContextManager";

  @Getter(value="technologyContextManager", ignoreType=true)
  public abstract CSVTechnologyContextManager getTechnologyContextManager();

  @Setter("technologyContextManager")
  public abstract void setTechnologyContextManager(CSVTechnologyContextManager paramCSVTechnologyContextManager);
}

