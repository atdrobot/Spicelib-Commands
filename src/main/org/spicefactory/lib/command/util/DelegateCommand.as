/*
 * Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.spicefactory.lib.command.util {

import org.spicefactory.lib.command.Command;

/**
 * @author Jens Halm
 */
public class DelegateCommand implements Command {

	private var delegate:Function;
	private var params:Array;

	function DelegateCommand (delegate:Function, params:Array) {
		this.delegate = delegate;
		this.params = params;
	}

	public function execute () : void {
		delegate.apply(null, params);
	}
	
}
}
